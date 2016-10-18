//
//  ViewController.m
//  TestAnimation
//
//  Created by aigegou on 2016/10/13.
//  Copyright © 2016年 aigegou. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    UIButton *evaluetBut =[UIButton buttonWithType:UIButtonTypeCustom];
    
    evaluetBut.frame = CGRectMake(0, 150, 80, 60);
    evaluetBut.backgroundColor = [UIColor redColor];
    [evaluetBut setTitle:@"校验" forState:UIControlStateNormal];
    
    [evaluetBut addTarget:self action:@selector(changeImageView:) forControlEvents:UIControlEventTouchUpInside];
    [evaluetBut setImage:[UIImage imageNamed:@"return_arrow_down"] forState:UIControlStateNormal];
    [self.view addSubview:evaluetBut];

}

- (void)changeImageView:(UIButton *)sender {
    
    sender.selected = !sender.selected;
    
    [UIView animateWithDuration:1.0 animations:^{
        
        if (sender.selected) {
            
            sender.imageView.transform =CGAffineTransformMakeRotation(-M_PI);
            
        } else{
            
            sender.imageView.transform =CGAffineTransformMakeRotation(0);
            
        };
        
    }];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
