//
//  test.m
//  GAAVPlayerDemo
//
//  Created by vsKing on 2018/4/25.
//  Copyright © 2018年 vsKing. All rights reserved.
//

#import "test.h"

@interface test ()

@property (nonatomic, strong) UILabel *label1;
@property (nonatomic, strong) UILabel *label2;
@property (nonatomic, strong) UILabel *label3;
@property (nonatomic, strong) UILabel *label4;
@property (nonatomic, strong) UILabel *label5;
@property (nonatomic, strong) UIView *baseView;

@end


@implementation test

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        self.backgroundColor = [UIColor purpleColor];
        
        [self initUI];
    }
    return self;
}


- (void)initUI{
    
    UIView * baseView = [[UIView alloc] init];
    [self addSubview:baseView];
    [baseView setBackgroundColor:[UIColor blueColor]];
    
    UILabel * label1 = [[UILabel alloc] init];
    [label1 setText:@"左上脚-1"];
    [label1 setBackgroundColor:[UIColor redColor]];
    [baseView addSubview:label1];
    
    UILabel * label2 = [[UILabel alloc] init];
    [label2 setText:@"右上脚-2"];
    [label2 setBackgroundColor:[UIColor redColor]];
    [baseView addSubview:label2];
    
    UILabel * label3 = [[UILabel alloc] init];
    [label3 setText:@"左下脚-3"];
    [label3 setBackgroundColor:[UIColor redColor]];
    [baseView addSubview:label3];
    
    UILabel * label4 = [[UILabel alloc] init];
    [label4 setText:@"右下脚-4"];
    [label4 setBackgroundColor:[UIColor redColor]];
    [baseView addSubview:label4];
    
    UILabel * label5 = [[UILabel alloc] init];
    [label5 setText:@"中心-5"];
    [label5 setBackgroundColor:[UIColor redColor]];
    [baseView addSubview:label5];
    
    label1.textAlignment = NSTextAlignmentCenter;
    label2.textAlignment = NSTextAlignmentCenter;
    label3.textAlignment = NSTextAlignmentCenter;
    label4.textAlignment = NSTextAlignmentCenter;
    label5.textAlignment = NSTextAlignmentCenter;
    
    self.baseView = baseView;
    self.label1 = label1;
    self.label2 = label2;
    self.label3 = label3;
    self.label4 = label4;
    self.label5 = label5;

    
}

- (void)layoutSubviews{
    [super layoutSubviews];    

    CGSize size = self.frame.size;
    CGFloat wid = 80;
    CGFloat het = 80;
    
    self.baseView.frame = self.frame;
    
    self.label1.frame = CGRectMake(0, 0, wid, het);
    
    self.label2.frame = CGRectMake(size.width - wid, 0, wid, wid);
    
    self.label3.frame = CGRectMake(0, size.height - het, wid, het);
    
    self.label4.frame = CGRectMake(size.width - wid, size.height - het, wid, het);

    self.label5.frame = CGRectMake((size.width-wid)/2.0, (size.height-het)/2.0, wid, het);
    
    
}


- (void)rotate:(CGFloat)rotate{
    
    self.transform = CGAffineTransformMakeRotation(M_PI_2);
    self.baseView.frame = CGRectMake(0, 0, 568, 320);
    
    [self setNeedsLayout];
    
    
    
}



@end
