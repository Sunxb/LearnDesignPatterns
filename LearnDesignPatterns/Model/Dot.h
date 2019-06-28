//
//  Dot.h
//  LearnDesignPatterns
//
//  Created by sunxiaobin on 2019/6/27.
//  Copyright © 2019 sun. All rights reserved.
//

#import "Vertex.h"

NS_ASSUME_NONNULL_BEGIN

@interface Dot : Vertex
//{
//    UIColor * _color;
//    CGSize _size;
//}

@property (nonatomic, strong) UIColor * color;
@property (nonatomic, assign) CGSize size;

//- (UIColor *)color;
//- (CGSize)size;
//- (void)drawWithContext:(CGContextRef)context;
@end

NS_ASSUME_NONNULL_END
