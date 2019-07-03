//
//  CharactorDirector.m
//  LearnDesignPatterns
//
//  Created by sunxiaobin on 2019/7/3.
//  Copyright © 2019 sun. All rights reserved.
//

#import "CharactorDirector.h"
#import "CharactorBuilder.h"

@implementation CharactorDirector

- (Charactor *)createCharartorA:(CharactorBuilder *)builder {
    [[[[builder buildStrength:10.0]
            buildIntelligence:10.0]
                   buildSpeed:10.0]
            buildAggressivity:10.0];
    
    return builder.charactor;
    
}

- (Charactor *)createCharartorB:(CharactorBuilder *)builder {
    [[[[builder buildStrength:2.0]
            buildIntelligence:3.0]
                   buildSpeed:4.0]
            buildAggressivity:5.0];
    
    return builder.charactor;
}

@end
