//
//  BookShelf.h
//  设计模式
//
//  Created by sunxiaobin on 2020/3/31.
//  Copyright © 2020 sunxb. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Aggregate.h"
@class Book;

@interface BookShelf : NSObject <Aggregate>
@property (nonatomic, assign) NSInteger maxCount;
- (void)addBook:(Book *)book;
- (void)removeBookAtIndex:(NSInteger)index;
- (NSInteger)getLength;
- (Book *)bookAtIndex:(NSInteger)index;
#pragma mark - protocol
- (id<Iterator>)iterator;
- (id<Operator>)operate;
@end

