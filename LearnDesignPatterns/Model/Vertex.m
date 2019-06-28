//
//  Vertex.m
//  LearnDesignPatterns
//
//  Created by sunxiaobin on 2019/6/27.
//  Copyright © 2019 sun. All rights reserved.
//

#import "Vertex.h"



@implementation Vertex

@synthesize location = _location;


- (void)drawWithContext:(CGContextRef)context {
    CGFloat x = self.location.x;
    CGFloat y = self.location.y;
    CGContextAddLineToPoint(context, x, y);
}

- (id)initWithLocation:(CGPoint)location {
    if (self = [super init]) {
        self.location = location;
    }
    return self;
}


#pragma mark - copy
- (id)copyWithZone:(NSZone *)zone {
    Vertex * vertextCopy = [[[self class] allocWithZone:zone] initWithLocation:_location];
    return vertextCopy;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
