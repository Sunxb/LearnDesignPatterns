//
//  CTMediator+FirstVC.m
//  LearnDesignPatterns
//
//  Created by sunxiaobin on 2019/7/11.
//  Copyright © 2019 sun. All rights reserved.
//

#import "CTMediator+FirstVC.h"

@implementation CTMediator (FirstVC)

- (UIViewController *)CTMediator_firstVCWithName:(NSString *)name
                                        callBack:(void(^)(NSString * type))callBack {
    
    NSMutableDictionary * params = [NSMutableDictionary new];
    [params setValue:name forKey:@"name"];
    [params setValue:callBack forKey:@"callBack"];
    
    UIViewController * vc = [self performTarget:@"FirstVCModule" action:@"pushToFirstVC:" params:params.copy shouldCacheTarget:NO];
    
    // 防错
    if (![vc isKindOfClass:[UIViewController class]]) vc = [[UIViewController alloc] init];
    
    return vc;
}

@end
