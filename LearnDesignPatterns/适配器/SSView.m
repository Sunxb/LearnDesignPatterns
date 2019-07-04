//
//  SSView.m
//  LearnDesignPatterns
//
//  Created by sunxiaobin on 2019/7/4.
//  Copyright © 2019 sun. All rights reserved.
//

#import "SSView.h"

@interface SSView ()
@property (nonatomic, strong) UIImageView * icon;
@property (nonatomic, strong) UILabel * nameLabel;
@end

@implementation SSView

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        
        self.icon = [UIImageView new];
        [self addSubview:self.icon];
        
        self.nameLabel = [UILabel new];
        [self addSubview:self.nameLabel];
        
    }
    return self;
}

#pragma mark -
- (void)loadUIWithData:(id<SSViewProtocol>)data; {
    self.icon.image = [UIImage imageNamed:[data imageName]];
    self.nameLabel.text = [data nameLabelStr];
    
    NSLog(@"%@---%@",[data imageName], [data nameLabelStr]);
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
