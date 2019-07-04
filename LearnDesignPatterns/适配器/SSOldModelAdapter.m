//
//  SSOldModelAdapter.m
//  LearnDesignPatterns
//
//  Created by sunxiaobin on 2019/7/4.
//  Copyright © 2019 sun. All rights reserved.
//

#import "SSOldModelAdapter.h"
#import "SSOldModel.h"

@implementation SSOldModelAdapter

- (NSString *)imageName {
    return self.oldModel.imageName;
}

- (NSString *)nameLabelStr {
    return self.oldModel.name;
}

@end
