//
//  AbstractDisplay.h
//  设计模式
//
//  Created by sunxiaobin on 2020/4/3.
//  Copyright © 2020 sunxb. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface AbstractDisplay : NSObject
- (instancetype)initWithString:(NSString *)string;
@property (nonatomic, strong) NSString * displayStr;
- (void)display;
#pragma mark - abstract method
- (void)start;
- (void)printStr;
- (void)end;

@end

NS_ASSUME_NONNULL_END
