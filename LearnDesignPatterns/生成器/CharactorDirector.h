//
//  CharactorDirector.h
//  LearnDesignPatterns
//
//  Created by sunxiaobin on 2019/7/3.
//  Copyright © 2019 sun. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Charactor;
@class CharactorBuilder;

NS_ASSUME_NONNULL_BEGIN

// 负责控制具体创建一个什么样的人物,  具体到每个人物的属性值

@interface CharactorDirector : NSObject

// 每一个方法创建一类charactor
// 下面这两个方法实现的写法,意味着把具体创建一个怎样的charactor 这一层逻辑放在director中
// 其实这样的话,就没有必要传进一个builder
// 因为在此类写法中,builder里面只有创建和赋值的作用, 算是一个中间的层
- (Charactor *)createCharartorA:(CharactorBuilder *)builder;
- (Charactor *)createCharartorB:(CharactorBuilder *)builder;

// 我们可以换种写法, director只封装创建的逻辑, 具体的是什么样的charactor 通过builder的子类来决定
// 代码在 "生成器2" 里面


@end

NS_ASSUME_NONNULL_END
