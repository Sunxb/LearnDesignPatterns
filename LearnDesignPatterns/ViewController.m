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

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 工厂方法
//    CanvasViewGenerator * generator = [ClothCanvasViewGenerator new];
//    CanvasView * v = [generator canvasViewWithFrame:CGRectMake(0, 60, 40, 40)];
//    [self.view addSubview:v];
    
    
    NSLog(@"%f",[UIApplication sharedApplication].statusBarFrame.size.height);
    
    
    
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



@end
