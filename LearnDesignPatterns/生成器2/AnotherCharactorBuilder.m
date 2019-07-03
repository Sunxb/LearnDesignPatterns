//
//  AnotherCharactorBuilder.m
//  LearnDesignPatterns
//
//  Created by sunxiaobin on 2019/7/3.
//  Copyright © 2019 sun. All rights reserved.
//

#import "AnotherCharactorBuilder.h"
#import "Charactor.h"

@implementation AnotherCharactorBuilder

- (instancetype)init {
    if (self = [super init]) {
        self.charactor = [Charactor new];
    }
    return self;
}

- (void)buildeAggressivity {
}

- (void)buildeStrength {
}

- (void)buildeSpeed {
}

- (void)buildeIntelligence {
}

@end
