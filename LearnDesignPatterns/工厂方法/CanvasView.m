//
//  CanvasView.m
//  LearnDesignPatterns
//
//  Created by sunxiaobin on 2019/7/2.
//  Copyright © 2019 sun. All rights reserved.
//

#import "CanvasView.h"

@implementation CanvasView
- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        self.backgroundColor = [UIColor redColor];
    }
    return self;
}
@end


@implementation PaperCanvasView
- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        self.backgroundColor = [UIColor grayColor];
    }
    return self;
}
@end


@implementation ClothCanvasView
- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        self.backgroundColor = [UIColor yellowColor];
    }
    return self;
}
@end
