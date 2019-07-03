//
//  CharactorBuilder.h
//  LearnDesignPatterns
//
//  Created by sunxiaobin on 2019/7/3.
//  Copyright © 2019 sun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Charactor.h"

NS_ASSUME_NONNULL_BEGIN

// 负责创建charactor类  并给属性赋值

@interface CharactorBuilder : NSObject

@property (nonatomic, strong) Charactor * charactor;

- (CharactorBuilder *)buildNewCharactor;

// 设置攻击性
- (CharactorBuilder *)buildAggressivity:(float)aggressivity;

// 设置力量
- (CharactorBuilder *)buildStrength:(float)strength;

// 设置智力
- (CharactorBuilder *)buildIntelligence:(float)intelligence;

// 设置速度
- (CharactorBuilder *)buildSpeed:(float)speed;





@end

NS_ASSUME_NONNULL_END
