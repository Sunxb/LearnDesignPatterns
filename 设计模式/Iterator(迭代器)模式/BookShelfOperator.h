//
//  BookShelfOperator.h
//  设计模式
//
//  Created by sunxiaobin on 2020/4/3.
//  Copyright © 2020 sunxb. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Operator.h"
@class BookShelf;

NS_ASSUME_NONNULL_BEGIN

@interface BookShelfOperator : NSObject <Operator>
- (instancetype)initWithBookShelf:(BookShelf *)shelf;

#pragma mark - protocol
- (void)addObject:(id)obj;
@end

NS_ASSUME_NONNULL_END
