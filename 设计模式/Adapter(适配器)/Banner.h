//
//  Banner.h
//  设计模式
//
//  Created by sunxiaobin on 2020/4/3.
//  Copyright © 2020 sunxb. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Banner : NSObject

@property (nonatomic, strong) NSString * nameStr;

- (void)showWithParen;// 括号
- (void)showWithAster;// 星号
@end

NS_ASSUME_NONNULL_END
