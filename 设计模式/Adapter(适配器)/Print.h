//
//  Print.h
//  设计模式
//
//  Created by sunxiaobin on 2020/4/3.
//  Copyright © 2020 sunxb. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol Print <NSObject>
- (void)printWeak;
- (void)printStrong;
@end

NS_ASSUME_NONNULL_END
