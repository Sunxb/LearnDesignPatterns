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


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    

    
    [self builderTest2];
    
    NSLog(@"--");

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

/// 工厂方法  通过不同的generator创建不同的view
- (void)factory {
    // 工厂方法  通过不同的generator创建不同的view
    CanvasViewGenerator * generator = [ClothCanvasViewGenerator new];
    CanvasView * v = [generator canvasViewWithFrame:CGRectMake(0, 60, 40, 40)];
    [self.view addSubview:v];
}


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

@end
