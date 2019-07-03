//
//  AnotherCharactorDirector.m
//  LearnDesignPatterns
//
//  Created by sunxiaobin on 2019/7/3.
//  Copyright © 2019 sun. All rights reserved.
//

#import "AnotherCharactorDirector.h"
#import "AnotherCharactorBuilder.h"

@implementation AnotherCharactorDirector
- (Charactor *)createCharactor:(AnotherCharactorBuilder *)builder {
    if (!builder) return nil;
    
    [builder buildeSpeed];
    [builder buildeStrength];
    [builder buildeIntelligence];
    [builder buildeAggressivity];
    
    return builder.charactor;
    
}
@end
