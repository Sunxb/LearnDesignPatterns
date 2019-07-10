//
//  Target_FirstVC.m
//  LearnDesignPatterns
//
//  Created by sunxiaobin on 2019/7/10.
//  Copyright © 2019 sun. All rights reserved.
//

#import "Target_FirstViewController.h"
#import "CTMediator.h"
#import "FirstViewController.h"

@implementation Target_FirstViewController

- (void)Action_pushToFirstVC:(NSDictionary *)params {
    Class vcClass = NSClassFromString(@"FirstViewController");
    if (!vcClass) return;
    id obj = [[vcClass alloc] init];
    [obj setValue:params forKey:@"params"];
    
    [[UIApplication sharedApplication].keyWindow.rootViewController presentViewController:(UIViewController *)obj
                                                                                 animated:YES
                                                                               completion:nil];
    
}

@end
