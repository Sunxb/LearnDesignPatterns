//
//  StringDisplay.m
//  设计模式
//
//  Created by sunxiaobin on 2020/4/3.
//  Copyright © 2020 sunxb. All rights reserved.
//

#import "StringDisplay.h"

@implementation StringDisplay

- (void)start {
    [self printLine];
}

- (void)printStr {
    NSLog(@"|%@|",self.displayStr);
}

- (void)end {
    [self printLine];
}


#pragma mark - private
- (void)printLine {
    if (!self.displayStr) return;
    NSInteger strLength = self.displayStr.length;
    
    NSMutableString * str = [[NSMutableString alloc] init];
    [str appendString:@"+"];
    for (NSInteger i = 0; i < strLength; i ++) {
        [str appendString:@"-"];
    }
    [str appendString:@"+"];
    NSLog(@"%@",str);
}

@end
