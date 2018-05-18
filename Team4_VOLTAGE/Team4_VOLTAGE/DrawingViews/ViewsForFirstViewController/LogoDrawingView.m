//
//  LogoDrawingView.m
//  Team4_VOLTAGE
//
//  Created by anthony volkov on 5/18/18.
//  Copyright © 2018 Yauheni Kamesh. All rights reserved.
//

#import "LogoDrawingView.h"

@implementation LogoDrawingView

- (void)drawRect:(CGRect)rect {
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    //scale
    CGFloat height = self.bounds.size.height;
    
    CGFloat scale = height/260;   //cause default size (260, 260)
    //colors
    CGColorRef deepBlue = [UIColor colorWithRed:10/255.f green:66/255.f blue:145/255.f alpha:1].CGColor;
    CGColorRef lighGray = [UIColor colorWithRed:178/255.f green:183/255.f blue:187/255.f alpha:1].CGColor;
    
    
    //drawing circles
    
    //biggest circle - BLUE
    CGContextSetFillColorWithColor(context, deepBlue);
    CGContextAddArc(context, 130*scale, 130*scale, 89*scale, 0, 2*M_PI, YES);
    CGContextFillPath(context);
    //smaller circle - WHITE
    CGContextSetFillColorWithColor(context, [UIColor whiteColor].CGColor);
    CGContextAddArc(context, 130*scale, 130*scale, 81*scale, 0, 2*M_PI, YES);
    CGContextFillPath(context);
    //smallest circle - GRAY
    CGContextSetFillColorWithColor(context, lighGray);
    CGContextAddArc(context, 130*scale, 130*scale, 77*scale, 0, 2*M_PI, YES);
    CGContextFillPath(context);
    
    
    //drawing lightning
    
    //biggest lightning - BLACK
    CGContextSetFillColorWithColor(context, [UIColor blackColor].CGColor);
    CGContextMoveToPoint(context, 255*scale, 35*scale);
    CGContextAddLineToPoint(context, 155*scale, 56*scale);
    CGContextAddLineToPoint(context, 63*scale, 161*scale);
    CGContextAddLineToPoint(context, 110*scale, 147*scale);
    CGContextAddLineToPoint(context, 70*scale, 188*scale);
    CGContextAddLineToPoint(context, 90*scale, 184*scale);
    CGContextAddLineToPoint(context, 45*scale, 238*scale);
    CGContextAddLineToPoint(context, 193*scale, 132*scale);
    CGContextAddLineToPoint(context, 156*scale, 141*scale);
    CGContextAddLineToPoint(context, 234*scale, 80*scale);
    CGContextAddLineToPoint(context, 193*scale, 91*scale);
    CGContextAddLineToPoint(context, 255*scale, 35*scale);
    CGContextFillPath(context);
    
    //inner lightning #1 - WHITE
    CGContextSetFillColorWithColor(context, [UIColor whiteColor].CGColor);
    CGContextMoveToPoint(context, 213*scale, 47*scale);
    CGContextAddLineToPoint(context, 160*scale, 58*scale);
    CGContextAddLineToPoint(context, 75*scale, 151*scale);
    CGContextAddLineToPoint(context, 123*scale, 137*scale);
    CGContextAddLineToPoint(context, 83*scale, 179*scale);
    CGContextAddLineToPoint(context, 108*scale, 171*scale);
    CGContextAddLineToPoint(context, 45*scale, 238*scale);
    CGContextAddLineToPoint(context, 140*scale, 156*scale);
    CGContextAddLineToPoint(context, 121*scale, 161*scale);
    CGContextAddLineToPoint(context, 170*scale, 109*scale);
    CGContextAddLineToPoint(context, 144*scale, 117*scale);
    CGContextAddLineToPoint(context, 213*scale, 47*scale);
    CGContextFillPath(context);
    
    //inner lightning #2 - BLUE
    CGContextSetFillColorWithColor(context, deepBlue);
    CGContextMoveToPoint(context, 235*scale, 43*scale);
    CGContextAddLineToPoint(context, 213*scale, 47*scale);
    CGContextAddLineToPoint(context, 144*scale, 117*scale);
    CGContextAddLineToPoint(context, 170*scale, 109*scale);
    CGContextAddLineToPoint(context, 121*scale, 161*scale);
    CGContextAddLineToPoint(context, 140*scale, 156*scale);
    CGContextAddLineToPoint(context, 45*scale, 238*scale);
    CGContextAddLineToPoint(context, 168*scale, 144*scale);
    CGContextAddLineToPoint(context, 140*scale, 150*scale);
    CGContextAddLineToPoint(context, 202*scale, 95*scale);
    CGContextAddLineToPoint(context, 171*scale, 103*scale);
    CGContextAddLineToPoint(context, 235*scale, 43*scale);
    CGContextFillPath(context);
}


@end
