//
//  CharactorBuilder.m
//  LearnDesignPatterns
//
//  Created by sunxiaobin on 2019/7/3.
//  Copyright © 2019 sun. All rights reserved.
//

#import "CharactorBuilder.h"

@implementation CharactorBuilder

- (instancetype)init {
    if (self = [super init]) {
        self.charactor = [Charactor new];
    }
    return self;
}


- (CharactorBuilder *)buildNewCharactor {
    self.charactor = [Charactor new];
    return self;
}

- (CharactorBuilder *)buildStrength:(float)strength {
    self.charactor.strength = strength;
    return self;
}

- (CharactorBuilder *)buildAggressivity:(float)aggressivity {
    self.charactor.aggressivity = aggressivity;
    return self;
}

- (CharactorBuilder *)buildSpeed:(float)speed {
    self.charactor.speed = speed;
    return self;
}

- (CharactorBuilder *)buildIntelligence:(float)intelligence {
    self.charactor.intelligence = intelligence;
    return self;
}

@end
