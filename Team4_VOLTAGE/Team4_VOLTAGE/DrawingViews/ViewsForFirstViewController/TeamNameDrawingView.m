//
//  TeamNameDrawingView.m
//  Team4_VOLTAGE
//
//  Created by anthony volkov on 5/18/18.
//  Copyright © 2018 Yauheni Kamesh. All rights reserved.
//

#import "TeamNameDrawingView.h"

@implementation TeamNameDrawingView

- (void)drawRect:(CGRect)rect {
    
    NSString *textTeamName = @"VOLTAGE";
//    UIFont *font = [UIFont fontWithName:@"Helvetica" size:60.f];
    
//    UIFont *font = [UIFont italicSystemFontOfSize:60.f];
    UIFont *font = [UIFont monospacedDigitSystemFontOfSize:self.bounds.size.width/6.9f
                                                    weight:self.bounds.size.width/6.9f];
    
//    UIFont *font = [UIFont systemFontOfSize:60.f];
//    [UIFont italicSystemFontOfSize:60.f]
    
    NSDictionary *attributes = [NSDictionary dictionaryWithObjectsAndKeys:
                                font,                   NSFontAttributeName,
                                nil];
    
    CGSize textSize = [textTeamName sizeWithAttributes:attributes];
    
    CGRect textRect = CGRectMake(CGRectGetMidX(self.bounds) - textSize.width / 2,
                                 CGRectGetMidY(self.bounds) - textSize.height / 2,
                                 textSize.width, textSize.height);
    textRect = CGRectIntegral(textRect);
    
    [textTeamName drawInRect:textRect withAttributes:attributes];
    
}

@end
