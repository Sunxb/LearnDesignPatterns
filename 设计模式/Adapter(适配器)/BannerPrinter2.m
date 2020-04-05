//
//  BannerPrinter2.m
//  设计模式
//
//  Created by sunxiaobin on 2020/4/3.
//  Copyright © 2020 sunxb. All rights reserved.
//

#import "BannerPrinter2.h"
#import "Banner.h"

@interface BannerPrinter2 ()
@property (nonatomic, strong) Banner * banner;
@end

@implementation BannerPrinter2

- (void)printWeak {
    [self.banner showWithParen];
}

- (void)printStrong {
    [self.banner showWithAster];
}


#pragma mark - lazy load
- (Banner *)banner {
    if (!_banner) {
        _banner = [[Banner alloc] init];
    }
    return _banner;
}

@end
