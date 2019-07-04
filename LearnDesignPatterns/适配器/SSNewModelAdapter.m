//
//  SSNewModelAdapter.m
//  LearnDesignPatterns
//
//  Created by sunxiaobin on 2019/7/4.
//  Copyright © 2019 sun. All rights reserved.
//

#import "SSNewModelAdapter.h"
#import "SSNewModel.h"

@implementation SSNewModelAdapter

- (NSString *)imageName {
    return self.model.item.imageName;
}

- (NSString *)nameLabelStr {
    return self.model.name;
}

@end
