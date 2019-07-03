//
//  CanvasViewGenerator.m
//  LearnDesignPatterns
//
//  Created by sunxiaobin on 2019/7/2.
//  Copyright © 2019 sun. All rights reserved.
//

#import "CanvasViewGenerator.h"


@implementation CanvasViewGenerator
- (CanvasView *)canvasViewWithFrame:(CGRect)frame {
    return [[CanvasView alloc] initWithFrame:frame];
}
@end

@implementation PaperCanvasViewGenerator
- (CanvasView *)canvasViewWithFrame:(CGRect)frame {
    return [[PaperCanvasView alloc] initWithFrame:frame];
}
@end

@implementation ClothCanvasViewGenerator
- (CanvasView *)canvasViewWithFrame:(CGRect)frame {
    return [[ClothCanvasView alloc] initWithFrame:frame];
}
@end
