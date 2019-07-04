//
//  SSView.h
//  LearnDesignPatterns
//
//  Created by sunxiaobin on 2019/7/4.
//  Copyright © 2019 sun. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SSViewProtocol.h"

@class SSOldModel;

NS_ASSUME_NONNULL_BEGIN

/// 比如说 SSView 就是我们平时用的一个自定义的view, 当然了当前这个view比较简单, 只需要一个image和一个label
/// 最开始的时候我们在封装view的方法的时候,可能会直接用 `- (void)loadUIWithData:(SSOldModel *)model;` 这样子.
/// 如果我们要复用这个view, 在别的地方用的时候, model不是SSOldModel  而是SSNewModel, 这时我们想复用view就要改变一下了

@interface SSView : UIView
- (instancetype)init NS_UNAVAILABLE;
+ (instancetype)new NS_UNAVAILABLE;

- (void)loadUIWithData:(id<SSViewProtocol>)data;

@end

NS_ASSUME_NONNULL_END
