//
//  Vertex.h
//  LearnDesignPatterns
//
//  Created by sunxiaobin on 2019/6/27.
//  Copyright © 2019 sun. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Mark.h"

NS_ASSUME_NONNULL_BEGIN

@interface Vertex : UIView <Mark,NSCopying>
{
    CGPoint _location;
}


- (id)initWithLocation:(CGPoint)location;
//- (id)copyWithZone:(NSZone)zone;

@end

NS_ASSUME_NONNULL_END
