//
//  BannerPrinter.m
//  设计模式
//
//  Created by sunxiaobin on 2020/4/3.
//  Copyright © 2020 sunxb. All rights reserved.
//

#import "BannerPrinter.h"

@implementation BannerPrinter

#pragma mark - protocol
- (void)printWeak {
    [super showWithParen];
}
- (void)printStrong {
    [super showWithAster];
}

@end
