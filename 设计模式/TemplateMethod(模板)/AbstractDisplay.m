//
//  AbstractDisplay.m
//  设计模式
//
//  Created by sunxiaobin on 2020/4/3.
//  Copyright © 2020 sunxb. All rights reserved.
//

#import "AbstractDisplay.h"

@interface AbstractDisplay ()

@end

@implementation AbstractDisplay

- (instancetype)initWithString:(NSString *)string {
    if (self = [super init]) {
        self.displayStr = string;
    }
    return self;
}

- (void)display {
    [self start];
    
    for (NSInteger i = 0; i < 5; i ++) {
        [self printStr];
    }
    
    [self end];
}

#pragma mark - abstract method
- (void)start {
    
}

- (void)printStr {
    
}

- (void)end {
    
}


@end
