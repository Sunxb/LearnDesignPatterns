//
//  BannerPrinter.h
//  设计模式
//
//  Created by sunxiaobin on 2020/4/3.
//  Copyright © 2020 sunxb. All rights reserved.
//

#import "Banner.h"
#import "Print.h"

@interface BannerPrinter : Banner <Print>
#pragma mark - protocol
- (void)printWeak;
- (void)printStrong;
@end
