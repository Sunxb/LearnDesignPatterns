//
//  CharactorBuilderOne.m
//  LearnDesignPatterns
//
//  Created by sunxiaobin on 2019/7/3.
//  Copyright © 2019 sun. All rights reserved.
//

#import "AnotherCharactorBuilderOne.h"
#import "Charactor.h"

@implementation AnotherCharactorBuilderOne

- (instancetype)init {
    if (self = [super init]) {
        self.charactor = [Charactor new];
    }
    return self;
}

- (void)buildeAggressivity {
    self.charactor.aggressivity = 10.0;
}

- (void)buildeStrength {
    self.charactor.strength = 10.0;
}

- (void)buildeSpeed {
    self.charactor.speed = 10.0;
}

- (void)buildeIntelligence {
    self.charactor.intelligence = 10.0;
}

@end
