//
//  Charactor.h
//  LearnDesignPatterns
//
//  Created by sunxiaobin on 2019/7/3.
//  Copyright © 2019 sun. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

// 假设一个任务有这么四个属性

@interface Charactor : NSObject

@property (nonatomic, assign) float aggressivity; // 攻击性
@property (nonatomic, assign) float strength;     //力量
@property (nonatomic, assign) float intelligence; // 智力
@property (nonatomic, assign) float speed;        //速度

@end

NS_ASSUME_NONNULL_END
