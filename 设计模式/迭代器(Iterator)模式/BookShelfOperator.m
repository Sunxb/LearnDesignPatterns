//
//  BookShelfOperator.m
//  设计模式
//
//  Created by sunxiaobin on 2020/4/3.
//  Copyright © 2020 sunxb. All rights reserved.
//

#import "BookShelfOperator.h"
#import "BookShelf.h"

@interface BookShelfOperator ()
@property (nonatomic, weak) BookShelf * bookShelf;
@end

@implementation BookShelfOperator

- (instancetype)initWithBookShelf:(BookShelf *)shelf {
    if (self = [super init]) {
        self.bookShelf = shelf;
    }
    return self;
}

#pragma mark - protocol
- (void)addObject:(id)obj {
    [self.bookShelf addBook:obj];
}

@end
