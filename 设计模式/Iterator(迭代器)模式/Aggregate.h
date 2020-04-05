//
//  Aggregate.h
//  设计模式
//
//  Created by sunxiaobin on 2020/3/31.
//  Copyright © 2020 sunxb. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Iterator.h"
#import "Operator.h"

@protocol Aggregate <NSObject>
- (id<Iterator>)iterator;
- (id<Operator>)operate;
@end

