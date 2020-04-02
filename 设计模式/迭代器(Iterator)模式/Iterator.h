//
//  Iterator.h
//  设计模式
//
//  Created by sunxiaobin on 2020/3/31.
//  Copyright © 2020 sunxb. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol Iterator <NSObject>
- (BOOL)hasNext;
- (id)next;
@end

