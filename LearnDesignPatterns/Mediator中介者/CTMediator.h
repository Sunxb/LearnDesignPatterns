//
//  CTMediator.h
//  LearnDesignPatterns
//
//  Created by sunxiaobin on 2019/7/10.
//  Copyright © 2019 sun. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

/// 自己动手码了一遍casa的CTMediator

@interface CTMediator : NSObject

- (instancetype)init NS_UNAVAILABLE;
+ (instancetype)new NS_UNAVAILABLE;

/// 单例
+ (instancetype)shareInstance;

/// 远程APP调用入口
- (id)performActionWithUrl:(NSURL *)url
                  complete:(void(^)(NSDictionary * __nullable info))complete;

/// 本地组件调用入口
// 使用反射 找到target和action
- (id)performTarget:(NSString *)targetName
             action:(NSString *)actionName
             params:(NSDictionary *)params
  shouldCacheTarget:(BOOL)shouldCachetarget;


/// 清除指定的缓存
- (void)releaseCachedTargetWithTargetName:(NSString *)targetName;

@end

NS_ASSUME_NONNULL_END
