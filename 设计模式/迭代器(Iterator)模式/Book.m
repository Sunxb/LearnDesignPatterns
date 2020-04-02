//
//  Book.m
//  设计模式
//
//  Created by sunxiaobin on 2020/3/31.
//  Copyright © 2020 sunxb. All rights reserved.
//

#import "Book.h"

@implementation Book

- (instancetype)initWithBookName:(NSString *)bookName {
    if (self = [super init]) {
        self.bookName = bookName;
    }
    return self;
}

- (NSString *)description {
    return [NSString stringWithFormat:@"book name : %@",self.bookName];
}

@end
