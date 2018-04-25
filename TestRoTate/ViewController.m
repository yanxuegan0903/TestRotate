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
    
    NSLog(@"self.frame111 === %@",NSStringFromCGRect(self.view.frame));
    
    
    self.view.transform = CGAffineTransformMakeRotation(M_PI_2);
    
//    t.transform = CGAffineTransformMakeRotation(M_PI_2);
    
    NSLog(@"self.frame222 === %@",NSStringFromCGRect(self.view.frame));
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
