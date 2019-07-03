//
//  CanvasViewGenerator.h
//  LearnDesignPatterns
//
//  Created by sunxiaobin on 2019/7/2.
//  Copyright © 2019 sun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CanvasView.h"
//#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CanvasViewGenerator : NSObject
- (CanvasView *)canvasViewWithFrame:(CGRect)frame;
@end

@interface PaperCanvasViewGenerator : CanvasViewGenerator

@end

@interface ClothCanvasViewGenerator : CanvasViewGenerator

@end


NS_ASSUME_NONNULL_END
