//
//  BookShelfIterator.h
//  设计模式
//
//  Created by sunxiaobin on 2020/3/31.
//  Copyright © 2020 sunxb. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Iterator.h"
@class BookShelf;

@interface BookShelfIterator : NSObject<Iterator>

- (instancetype)initWithBookShelf:(BookShelf *)bookShelf;

#pragma mark - protocol
- (BOOL)hasNext;
- (id)next;

@end


