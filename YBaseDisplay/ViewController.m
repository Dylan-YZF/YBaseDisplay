//
//  ViewController.m
//  YBaseDisplay
//
//  Created by Dylan on 15/12/12.
//  Copyright © 2015年 dylan. All rights reserved.
//

#import "ViewController.h"
#import "YDisplayView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    
    YDisplayItem *order =[YDisplayItem itemWithTitle:@"联系人"];
    
    
    
    [self.view setBackgroundColor:[UIColor lightGrayColor]];
    YDisplayView* disView = [[YDisplayView alloc]initWithFrame:CGRectMake(0, 20, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height-20)];
    
    
    [self.view addSubview:disView];
    
    disView.items = @[order];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
