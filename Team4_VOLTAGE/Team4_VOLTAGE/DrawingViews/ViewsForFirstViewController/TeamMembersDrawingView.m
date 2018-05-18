//
//  TeamMembersDrawingView.m
//  Team4_VOLTAGE
//
//  Created by anthony volkov on 5/18/18.
//  Copyright © 2018 Yauheni Kamesh. All rights reserved.
//

#import "TeamMembersDrawingView.h"

@implementation TeamMembersDrawingView

- (void)drawRect:(CGRect)rect {
    
    NSArray *text = @[@"Developers:", @"Anton Volkov", @"George Witkowski", @"Pavel Sakhanko", @"Yauhine Kamesh"];
    
    
    UIFont *font = [UIFont fontWithName:@"Helvetica" size:self.bounds.size.width/27.6f];
    NSDictionary *attributes = [NSDictionary dictionaryWithObjectsAndKeys:
                                font,                   NSFontAttributeName,
                                nil];
    
    CGFloat lineSpace = self.bounds.size.width/20.7f;
    CGFloat temp = self.bounds.size.width/20.7f;
    
    for (NSString *line in text) {
        [line drawAtPoint:CGPointMake(self.bounds.size.width/10.35f, temp) withAttributes:attributes];
        
        if ([line isEqualToString:@"Developers:"]) {
            temp = temp + self.bounds.size.width/16.56f;
        }else{
            temp = temp + lineSpace;
        }
    }
    
}

@end
