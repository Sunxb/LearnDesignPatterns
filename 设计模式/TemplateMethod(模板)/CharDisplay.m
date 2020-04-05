//
//  CharDisplay.m
//  设计模式
//
//  Created by sunxiaobin on 2020/4/3.
//  Copyright © 2020 sunxb. All rights reserved.
//

#import "CharDisplay.h"

@implementation CharDisplay

- (void)start {
    NSLog(@"<<<<");
}

- (void)printStr {
    NSLog(@"%@",self.displayStr);
}

- (void)end {
    NSLog(@">>>>");
}

@end
