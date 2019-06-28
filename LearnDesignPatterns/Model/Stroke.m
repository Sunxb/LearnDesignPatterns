//
//  Stroke.m
//  LearnDesignPatterns
//
//  Created by sunxiaobin on 2019/6/27.
//  Copyright © 2019 sun. All rights reserved.
//

#import "Stroke.h"


@interface Stroke ()

@end

@implementation Stroke
@synthesize color=_color, size=_size;

- (instancetype)init {
    if (self = [super init]) {
        self.children = [NSMutableArray new];
    }
    return self;
}

- (CGPoint)location {
    if (self.children.count > 0) {
        return [self.children[0] location];
    }
    return CGPointZero;
}

- (void)addmark:(id<Mark>)mark {
    [self.children addObject:mark];
}

- (void)removeMark:(id<Mark>)mark {
    
    if ([self.children containsObject:mark]) {
        [self.children removeObject:mark];
    }
    // 如果children中没有这个mark  因为mark只是服从Mark代理的类 不一定是具体的那个类 maybe是stroken vertex dot
    else {
        [self.children makeObjectsPerformSelector:@selector(removeObject:) withObject:mark];
    }
}

- (NSUInteger)count {
    return self.children.count;
}

- (id<Mark>)childMarkAtIndex:(NSUInteger)index {
    if (index >= self.children.count) return nil;
    return [self.children objectAtIndex:index];
}

- (id<Mark>)lastChild {
    return self.children.lastObject;
}

#pragma mark - protocol
- (void)drawWithContext:(CGContextRef)context {
    CGContextMoveToPoint(context, self.location.x, self.location.y);
    for (id<Mark> mark in self.children) {
        [mark drawWithContext:context];
    }
    
    CGContextSetLineWidth(context, self.size.width);
    CGContextSetLineCap(context, kCGLineCapRound);
    CGContextSetStrokeColorWithColor(context, self.color.CGColor);
    CGContextStrokePath(context);
}

#pragma mark - copy
- (id)copyWithZone:(NSZone *)zone {
    Stroke * stroke = [[[self class] allocWithZone:zone] init];
    // color
    stroke.color = self.color;
    // size
    stroke.size = self.size;
    // children
    for (id<Mark> mark in self.children) {
        [stroke addmark:mark.copy];
    }
    return stroke;
}

@end
