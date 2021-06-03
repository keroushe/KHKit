//
//  KHViewController.m
//  KHKit
//
//  Created by keroushe on 05/19/2021.
//  Copyright (c) 2021 keroushe. All rights reserved.
//

#import "KHViewController.h"
#import <KHKit/KHCategoryHeader.h>
#import <KHKit/SNKHSecureTextEntryLabel.h>

@interface KHViewController ()

@property (nonatomic, strong) SNKHSecureTextEntryLabel *label;

@end

@implementation KHViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    NSLog(@"%.f", self.view.kh_right);
    
    _label = [[SNKHSecureTextEntryLabel alloc] initWithFrame:CGRectMake(100, 100, 100, 40)];
    [_label kh_settingLabeltext:@"星途挂钩" textfont:[UIFont systemFontOfSize:14.0f] textcolor:[UIColor redColor]];
    [self.view addSubview:_label];
    
    _label.kh_secureTextEntry = YES;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
