//
//  FirstViewController.m
//  LearnDesignPatterns
//
//  Created by sunxiaobin on 2019/7/10.
//  Copyright © 2019 sun. All rights reserved.
//

#import "FirstViewController.h"


typedef void(^DismissCallBack)(NSString * type);

@interface FirstViewController ()


@property (nonatomic, strong) NSString * nameStr;
@property (nonatomic, copy) DismissCallBack callBack;
@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    // Do any additional setup after loading the view.
}

//#pragma mark - public
//- (instancetype)initWithParams:(NSDictionary *)params {
//    if (self = [super init]) {
//        self.params = params;
//    }
//    return self;
//}

#pragma mark - setter & getter
- (void)setParams:(NSDictionary *)params {
    _params = params;
    
    if ([params.allKeys containsObject:@"callBack"]) {
        self.callBack = params[@"callBack"];
    }
    
    if ([params.allKeys containsObject:@"name"]) {
        self.nameStr = params[@"name"];
    }
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self dismissViewControllerAnimated:YES completion:^{
        if (self.callBack) {
            self.callBack([NSString stringWithFormat:@"%@--%@",self.nameStr,[NSDate date]]);
        }
    }];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
