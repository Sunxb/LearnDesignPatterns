//
//  Banner.m
//  设计模式
//
//  Created by sunxiaobin on 2020/4/3.
//  Copyright © 2020 sunxb. All rights reserved.
//

#import "Banner.h"

@implementation Banner
- (void)showWithParen {
    NSLog(@"(%@)",self.nameStr);
}
- (void)showWithAster {
    NSLog(@"*%@*",self.nameStr);
}
@end
