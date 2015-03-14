//
//  SBStripeView.m
//  SBStripeView
//
//  Created by Scott Bossak on 11/14/14.
//  Copyright (c) 2014 Scott Bossak. All rights reserved.
//

#import "SBStripeView.h"

#define DegreesToRadians(x) ((x) * M_PI / 180.0)

static CGFloat const kDefaultBarWidth = 20;
static CGFloat const kDefaultBarAngle = 25;


@interface SBStripeView ()

@property (nonatomic, assign) NSInteger numberOfBars;
@property (nonatomic, assign) CGFloat barAngle;

@end


@implementation SBStripeView


- (instancetype)init {
    if (self = [super init]) {
        [self setup];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    if (self = [super initWithCoder:aDecoder]) {
        [self setup];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        [self setup];
    }
    return self;
}

- (void)setup {
    
    self.shouldDrawStripes = YES;
    self.barWidth = kDefaultBarWidth;
    self.barAngle = kDefaultBarAngle;
    
    self.numberOfBars = (NSInteger)( CGRectGetWidth(self.frame) / self.barWidth );
    
}

- (void)update {
    [self setNeedsDisplay];
}

- (void)drawRect:(CGRect)rect {
    [super drawRect:rect] ;
    
    if (self.shouldDrawStripes)
    {
        CGFloat xOffset = 0;
        
        CGContextRef ctx = UIGraphicsGetCurrentContext();
        
        CGContextRotateCTM(ctx, DegreesToRadians(self.barAngle));
        
        for (NSInteger i = 0; i <= self.numberOfBars+1; i++) {
            
            CGRect stripe = CGRectMake(xOffset,
                                       0,
                                       self.barWidth,
                                       CGRectGetHeight(rect)*2);
            
            NSLog(@"%li: %@", (long)i, NSStringFromCGRect(stripe));
            
            if (i % 2 == 0) {
                CGContextSetFillColorWithColor(ctx, self.firstColor.CGColor);
            } else {
                CGContextSetFillColorWithColor(ctx, self.secondColor.CGColor);
            }
            
            CGContextConcatCTM(ctx, CGAffineTransformMakeTranslation(0, self.barWidth/-2));
            
            CGContextFillRect(ctx, stripe);
            
            xOffset += self.barWidth;
        }
    }
    
}

@end
