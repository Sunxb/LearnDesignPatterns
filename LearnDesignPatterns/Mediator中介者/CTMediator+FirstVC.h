//
//  CTMediator+FirstVC.h
//  LearnDesignPatterns
//
//  Created by sunxiaobin on 2019/7/11.
//  Copyright © 2019 sun. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CTMediator.h"

NS_ASSUME_NONNULL_BEGIN

@interface CTMediator (FirstVC)

- (UIViewController *)CTMediator_firstVCWithName:(NSString *)name
                                        callBack:(void(^)(NSString * type))callBack;

@end

NS_ASSUME_NONNULL_END
