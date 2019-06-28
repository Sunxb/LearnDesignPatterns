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

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
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
    
    NSLog(@"--");
    // Do any additional setup after loading the view.
}


@end
