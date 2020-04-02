//
//  ViewController.m
//  设计模式
//
//  Created by sunxiaobin on 2020/3/31.
//  Copyright © 2020 sunxb. All rights reserved.
//

#import "ViewController.h"
#import "Book.h"
#import "BookShelf.h"
#import "BookShelfIterator.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 迭代器模式
    [self testIteratorPattern];
    

}

#pragma mark - 迭代器模式
- (void)testIteratorPattern {
    Book * book1 = [[Book alloc] initWithBookName:@"第1本书"];
    Book * book2 = [[Book alloc] initWithBookName:@"第2本书"];
    Book * book3 = [[Book alloc] initWithBookName:@"第3本书"];
    Book * book4 = [[Book alloc] initWithBookName:@"第4本书"];
    Book * book5 = [[Book alloc] initWithBookName:@"第5本书"];
    
    BookShelf * shelf = [[BookShelf alloc] init];
    [shelf addBook:book1];
    [shelf addBook:book2];
    [shelf addBook:book3];
    [shelf addBook:book4];
    [shelf addBook:book5];
    
    id<Iterator> iterator = shelf.iterator;
    while (iterator.hasNext) {
        NSLog(@"%@",iterator.next);
    }
    
}


@end
