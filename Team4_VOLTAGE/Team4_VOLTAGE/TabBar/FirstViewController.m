//
//  FirstViewController.m
//  Team4_VOLTAGE
//
//  Created by Yauheni Kamesh on 17.05.18.
//  Copyright © 2018 Yauheni Kamesh. All rights reserved.
//

#import "FirstViewController.h"
#import "LogoDrawingView.h"
#import "TeamNameDrawingView.h"
#import "TeamMembersDrawingView.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    @autoreleasepool{
    
        //set background color
    self.view.backgroundColor = [UIColor colorWithRed:196/255.f green:229/255.f blue:245/255.f alpha:1];
    
        //-----adding logo
    LogoDrawingView *logo = [[LogoDrawingView alloc] initWithFrame:CGRectMake(0, 0,
                                                                              self.view.bounds.size.width/1.15f,
                                                                              self.view.bounds.size.width/1.15f)];
    logo.backgroundColor = [UIColor clearColor];
//    logo.backgroundColor = [UIColor grayColor];
    logo.center = CGPointMake(self.view.center.x,
                              logo.bounds.size.height/2 + self.view.bounds.size.height/14.72);
    [self.view addSubview:logo];


        //-----adding team name
    TeamNameDrawingView *teamName = [[[TeamNameDrawingView alloc] initWithFrame:CGRectMake(0, self.view.bounds.size.height/1.89f,
                                                                                           self.view.bounds.size.width,
                                                                                           self.view.bounds.size.width/4.14f)] autorelease];
//    teamName.backgroundColor = [UIColor grayColor];
    teamName.backgroundColor = [UIColor clearColor];
    [self.view addSubview:teamName];

        
        //-----adding team members
    TeamMembersDrawingView *teamMembers = [[[TeamMembersDrawingView alloc] initWithFrame:
                                                                                CGRectMake(0,self.view.bounds.size.height - self.view.bounds.size.height/3.5f,
                                                                                self.view.bounds.size.width,
                                                                                self.view.bounds.size.width/1.88f)] autorelease];
//    teamMembers.backgroundColor = [UIColor grayColor];
    teamMembers.backgroundColor = [UIColor clearColor];
    [self.view addSubview:teamMembers];
    
    }

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
