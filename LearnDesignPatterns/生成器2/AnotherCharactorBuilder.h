//
//  AnotherCharactorBuilder.h
//  LearnDesignPatterns
//
//  Created by sunxiaobin on 2019/7/3.
//  Copyright © 2019 sun. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Charactor;

NS_ASSUME_NONNULL_BEGIN

@interface AnotherCharactorBuilder : NSObject

@property (nonatomic, strong) Charactor * charactor;

/*
 @property (nonatomic, assign) float aggressivity; // 攻击性
 @property (nonatomic, assign) float strength;     //力量
 @property (nonatomic, assign) float intelligence; // 智力
 @property (nonatomic, assign) float speed;        //速度
 */

- (void)buildeAggressivity;
- (void)buildeStrength;
- (void)buildeIntelligence;
- (void)buildeSpeed;

@end

NS_ASSUME_NONNULL_END
