//
//  ViewController.m
//  LearnDesignPatterns
//
//  Created by sunxiaobin on 2019/6/27.
//  Copyright © 2019 sun. All rights reserved.
//

#import "ViewController.h"
#import "Stroke.h"
#import "Dot.h"
#import "CanvasViewGenerator.h"

#import "CharactorDirector.h"
#import "CharactorBuilder.h"

#import "AnotherCharactorDirector.h"
#import "AnotherCharactorBuilderOne.h"
#import "AnotherCharactorBuilderTwo.h"

#import "SSOldModel.h"
#import "SSOldModelAdapter.h"
#import "SSNewModel.h"
#import "SSNewModelAdapter.h"
#import "SSView.h"

#import "CTMediator.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    

    
    
    NSLog(@"--");

}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self mediator];
}

void test1(){
    Dot * d1 = [[Dot alloc] initWithLocation:CGPointMake(0, 0)];
    d1.color = [UIColor blackColor];
    d1.size = CGSizeMake(10, 10);
    
    Dot * d2 = [[Dot alloc] initWithLocation:CGPointMake(0, 0)];
    d2.color = [UIColor redColor];
    //    d2.size = CGSizeMake(10, 10);
    
    Stroke * stroke = [[Stroke alloc] init];
    [stroke addmark:d1];
    [stroke addmark:d2];
    
    Stroke * stroke2 = [stroke copy];
}

#pragma mark - 工厂方法

/// 工厂方法  通过不同的generator创建不同的view
- (void)factory {
    // 工厂方法  通过不同的generator创建不同的view
    CanvasViewGenerator * generator = [ClothCanvasViewGenerator new];
    CanvasView * v = [generator canvasViewWithFrame:CGRectMake(0, 60, 40, 40)];
    [self.view addSubview:v];
}

#pragma mark- 生成器

- (void)builderTest1 {
    CharactorDirector * director = [[CharactorDirector alloc] init];
    Charactor * charactorA =  [director createCharartorA:[CharactorBuilder new]];
    Charactor * charactorB =  [director createCharartorB:[CharactorBuilder new]];
    NSLog(@"---");
}


- (void)builderTest2 {
    AnotherCharactorDirector * director = [[AnotherCharactorDirector alloc] init];
    Charactor * charactorA =  [director createCharactor:[AnotherCharactorBuilderOne new]];
    Charactor * charactorB =  [director createCharactor:[AnotherCharactorBuilderTwo new]];
    NSLog(@"---");
}

#pragma mark - 适配器

- (void)adapterTest {
    // model
    SSOldModel * oldModel = [SSOldModel new];
    oldModel.imageName = @"old-model-image-name";
    oldModel.name = @"old-model-label-name";
    
    SSNewModel * newModel = [SSNewModel new];
    SSNewModelItem * item = [SSNewModelItem new];
    item.imageName = @"new-model-image-name";
    newModel.item = item;
    newModel.name = @"new-model-label-name";
    
    // adapter
    
    SSOldModelAdapter * oldAdapter = [SSOldModelAdapter new];
    oldAdapter.oldModel = oldModel;
    
    SSNewModelAdapter * newAdapter = [SSNewModelAdapter new];
    newAdapter.model = newModel;
    
    SSView * sview = [[SSView alloc] initWithFrame:CGRectZero];
    //
    [sview loadUIWithData:newAdapter];
    
    [sview loadUIWithData:oldAdapter];

}

- (void)mediator {
    
    void (^callBackBlock)(NSString *type) = ^(NSString *type) {
        NSLog(@"%@",type);
    };
    NSString * name = @"test";
    [[CTMediator shareInstance] performTarget:@"FirstViewController"
                                       action:@"pushToFirstVC:"
                                       params:@{@"callBack":callBackBlock,@"name":name}
                            shouldCacheTarget:NO];
}

@end
