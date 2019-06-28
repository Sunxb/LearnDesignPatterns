//
//  Mark.h
//  LearnDesignPatterns
//
//  Created by sunxiaobin on 2019/6/27.
//  Copyright © 2019 sun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

//@class

NS_ASSUME_NONNULL_BEGIN

@protocol Mark <NSObject>

@optional
// protocol里面一般不用这种属性方式 .. 就当做是get set方法了
@property (nonatomic, strong) UIColor * color;
@property (nonatomic, assign) CGSize size;
@property (nonatomic, assign) CGPoint location;
@property (nonatomic, assign, readonly) NSUInteger count;// 子节点个数
@property (nonatomic, assign, readonly) id<Mark> lastChild;

- (id)copy;
- (void)addmark:(id<Mark>)mark;
- (void)removeMark:(id<Mark>)mark;
- (id<Mark>)childMarkAtIndex:(NSUInteger)index;

//
- (void)drawWithContext:(CGContextRef)context;
@end

NS_ASSUME_NONNULL_END
