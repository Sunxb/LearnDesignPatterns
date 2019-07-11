//
//  Target_FirstVC.h
//  LearnDesignPatterns
//
//  Created by sunxiaobin on 2019/7/10.
//  Copyright © 2019 sun. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface Target_FirstVCModule : NSObject

// param 包含callBack
- (UIViewController *)Action_pushToFirstVC:(NSDictionary *)param;

@end

NS_ASSUME_NONNULL_END
