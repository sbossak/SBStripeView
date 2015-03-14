//
//  SBStripeView.h
//  SBStripeView
//
//  Created by Scott Bossak on 11/14/14.
//  Copyright (c) 2014 Scott Bossak. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SBStripeView : UIView

@property (nonatomic, strong) UIColor *firstColor;
@property (nonatomic, strong) UIColor *secondColor;

@property (nonatomic, assign) CGFloat barWidth;

@property (nonatomic, assign) BOOL shouldDrawStripes;

- (void)update;

@end
