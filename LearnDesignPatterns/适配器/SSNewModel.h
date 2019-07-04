//
//  SSNewModel.h
//  LearnDesignPatterns
//
//  Created by sunxiaobin on 2019/7/4.
//  Copyright © 2019 sun. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface SSNewModelItem : NSObject
@property (nonatomic, strong) NSString * imageName;
// ... 其他的字段
@end

@interface SSNewModel : NSObject

@property (nonatomic, strong) SSNewModelItem * item;
@property (nonatomic, strong) NSString * name;

@end

NS_ASSUME_NONNULL_END
