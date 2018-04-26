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

@property (nonatomic, strong) test *t;

@end

@implementation ViewController

- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    test * t = [[test alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    [self.view addSubview:t];
        
    self.t = t;
    
    
    UIButton * btn = [[UIButton alloc] initWithFrame:CGRectMake(50, 50, 50, 50)];
    [self.view addSubview:btn];
    [btn setBackgroundColor:[UIColor grayColor]];
    [btn addTarget:self action:@selector(click) forControlEvents:UIControlEventTouchUpInside];
    
    
}


- (void)click{
    [self.t rotate:M_PI_2];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
