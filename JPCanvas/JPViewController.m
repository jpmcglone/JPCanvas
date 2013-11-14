//
//  JPViewController.m
//  JPCanvas
//
//  Created by John McGlone on 11/13/13.
//  Copyright (c) 2013 JP. All rights reserved.
//

#import "JPViewController.h"
#import "JPView.h"

@interface JPViewController ()
@property (nonatomic, retain) JPView *view;
@end

@implementation JPViewController
@dynamic view;

- (void)loadView {
    self.view = [JPView new];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end