//
//  ViewController.m
//  TestRoTate
//
//  Created by vsKing on 2018/4/25.
//  Copyright © 2018年 vsKing. All rights reserved.
//

#import "ViewController.h"
#import "test.h"




@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    test * t = [[test alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    [self.view addSubview:t];
    
    
    [t rotate:M_PI_2];
    
//    [UIView animateWithDuration:5.0 animations:^{
//        self.view.transform = CGAffineTransformMakeRotation(M_PI_2);
//        t.frame = CGRectMake(0, 0, 568, 320);
//        
//    }];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
