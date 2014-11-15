//
//  SBViewController.m
//  SBStripeView
//
//  Created by Scott Bossak on 11/14/2014.
//  Copyright (c) 2014 Scott Bossak. All rights reserved.
//

#import "SBViewController.h"
#import <SBStripeView.h>

@interface SBViewController ()

@property (nonatomic, strong) SBStripeView *sv1, *sv2, *sv3;

@end


@implementation SBViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.sv1 = [[SBStripeView alloc] initWithFrame:CGRectMake(0, 75, CGRectGetWidth(self.view.frame), 50)];
    
    self.sv1.firstColor = [UIColor colorWithRed:0.2 green:0.6 blue:0.86 alpha:1];
    self.sv1.secondColor = [UIColor colorWithRed:0.16 green:0.5 blue:0.73 alpha:1];
    self.sv1.barWidth = 20;
    
    [self.view addSubview:self.sv1];
    
    self.sv2 = [[SBStripeView alloc] initWithFrame:CGRectMake(0, 150, CGRectGetWidth(self.view.frame), 100)];
    
    self.sv2.firstColor = [UIColor colorWithRed:0.2 green:0.6 blue:0.86 alpha:1];
    self.sv2.secondColor = [UIColor colorWithRed:0.16 green:0.5 blue:0.73 alpha:1];
    self.sv2.barWidth = 50;
    
    [self.view addSubview:self.sv2];
    
    self.sv3 = [[SBStripeView alloc] initWithFrame:CGRectMake(0, 275, CGRectGetWidth(self.view.frame), 100)];
    
    self.sv3.firstColor = [UIColor colorWithRed:0.2 green:0.6 blue:0.86 alpha:1];
    self.sv3.secondColor = [UIColor colorWithRed:0.16 green:0.5 blue:0.73 alpha:1];
    self.sv3.barWidth = 25;
    
    [self.view addSubview:self.sv3];
    
}

- (IBAction)changeColors:(id)sender {
    
    self.sv1.firstColor = [UIColor colorWithRed:0.92 green:0.38 blue:0.33 alpha:1];
    self.sv1.secondColor = [UIColor colorWithRed:0.75 green:0.22 blue:0.17 alpha:1];
    [self.sv1 update];
    
    self.sv2.firstColor = [UIColor colorWithRed:0.11 green:0.82 blue:0.69 alpha:1];
    self.sv2.secondColor = [UIColor colorWithRed:0.09 green:0.63 blue:0.52 alpha:1];
    [self.sv2 update];
    
    self.sv3.firstColor = [UIColor colorWithRed:0.65 green:0.42 blue:0.75 alpha:1];
    self.sv3.secondColor = [UIColor colorWithRed:0.56 green:0.27 blue:0.68 alpha:1];
    [self.sv3 update];
}


@end
