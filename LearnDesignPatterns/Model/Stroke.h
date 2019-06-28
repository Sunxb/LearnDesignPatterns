//
//  Stroke.h
//  LearnDesignPatterns
//
//  Created by sunxiaobin on 2019/6/27.
//  Copyright © 2019 sun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Mark.h"

NS_ASSUME_NONNULL_BEGIN

@interface Stroke : NSObject <Mark,NSCopying>
{
    UIColor * _color;
    CGSize _size;
}

@property (nonatomic, strong) NSMutableArray <id<Mark>>* children;

@end

NS_ASSUME_NONNULL_END
