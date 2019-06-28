//
//  Dot.m
//  LearnDesignPatterns
//
//  Created by sunxiaobin on 2019/6/27.
//  Copyright © 2019 sun. All rights reserved.
//

#import "Dot.h"

@implementation Dot

@synthesize color=_colr, size=_size;

- (void)drawWithContext:(CGContextRef)context {
    CGFloat x = self.location.x;
    CGFloat y = self.location.y;
    CGSize frameSize = self.size;
    CGRect frame = CGRectMake(x, y, frameSize.width, frameSize.height);
    CGContextSetFillColorWithColor(context, self.color.CGColor);
    CGContextFillEllipseInRect(context, frame);
}

//#pragma mark - protocol
//- (UIColor *)color {
//    return [UIColor blackColor];
//}

#pragma mark - copy
- (id)copyWithZone:(NSZone *)zone {
    Dot * dot = [[[self class] allocWithZone:zone] initWithLocation:self.location];
    dot.color = self.color;
    dot.size = self.size;
    return dot;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
