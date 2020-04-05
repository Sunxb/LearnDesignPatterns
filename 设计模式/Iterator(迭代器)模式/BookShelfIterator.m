//
//  BookShelfIterator.m
//  设计模式
//
//  Created by sunxiaobin on 2020/3/31.
//  Copyright © 2020 sunxb. All rights reserved.
//

#import "BookShelfIterator.h"
#import "BookShelf.h"

@interface BookShelfIterator ()
@property (nonatomic, strong) BookShelf * shelf;
@property (nonatomic, assign) NSInteger index;
@end

@implementation BookShelfIterator

- (instancetype)initWithBookShelf:(BookShelf *)bookShelf {
    if (self = [super init]) {
        self.shelf = bookShelf;
    }
    return self;
}

#pragma mark - protocol
- (BOOL)hasNext {
    return self.index < [self.shelf getLength];
}

- (id)next {
    Book * book = [self.shelf bookAtIndex:self.index];
    self.index ++;
    return book;
}

- (void)dealloc {
    NSLog(@"BookShelfIterator dealloc");
}


@end
