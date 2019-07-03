//
//  AnotherCharactorDirector.h
//  LearnDesignPatterns
//
//  Created by sunxiaobin on 2019/7/3.
//  Copyright © 2019 sun. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Charactor;
@class AnotherCharactorBuilder;

NS_ASSUME_NONNULL_BEGIN

@interface AnotherCharactorDirector : NSObject

- (Charactor *)createCharactor:(AnotherCharactorBuilder *)builder;

@end

NS_ASSUME_NONNULL_END
