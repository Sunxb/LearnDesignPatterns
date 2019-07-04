//
//  SSOldModelAdapter.h
//  LearnDesignPatterns
//
//  Created by sunxiaobin on 2019/7/4.
//  Copyright © 2019 sun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SSViewProtocol.h"
@class SSOldModel;

NS_ASSUME_NONNULL_BEGIN

@interface SSOldModelAdapter : NSObject <SSViewProtocol>

@property (nonatomic, strong) SSOldModel * oldModel;

- (NSString *)imageName;
- (NSString *)nameLabelStr;

@end

NS_ASSUME_NONNULL_END
