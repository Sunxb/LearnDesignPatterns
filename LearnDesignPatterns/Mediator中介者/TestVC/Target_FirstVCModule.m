//
//  Target_FirstVC.m
//  LearnDesignPatterns
//
//  Created by sunxiaobin on 2019/7/10.
//  Copyright © 2019 sun. All rights reserved.
//

#import "Target_FirstVCModule.h"
#import "FirstViewController.h"

@implementation Target_FirstVCModule

- (UIViewController *)Action_pushToFirstVC:(NSDictionary *)params {
    Class vcClass = NSClassFromString(@"FirstViewController");
    
    if (!vcClass) return nil;
    
    id obj = [[vcClass alloc] init];
    [obj setValue:params forKey:@"params"];
    
    return (UIViewController *)obj;
    
}

@end
