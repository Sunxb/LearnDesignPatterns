//
//  SSNewModelAdapter.h
//  LearnDesignPatterns
//
//  Created by sunxiaobin on 2019/7/4.
//  Copyright © 2019 sun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SSViewProtocol.h"
@class SSNewModel;

NS_ASSUME_NONNULL_BEGIN

@interface SSNewModelAdapter : NSObject <SSViewProtocol>

@property (nonatomic, strong) SSNewModel * model;

- (NSString *)imageName;
- (NSString *)nameLabelStr;

@end

NS_ASSUME_NONNULL_END
