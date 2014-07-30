//
//  TTBaseViewController.h
//  TimeTrackingSystem
//
//  Created by Govind on 20/05/14.
//  Copyright (c) 2014 Experion. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TTBaseViewController : UIViewController

-(void)hideBackButton;
-(void)showBackButton;
-(void)setTitleForNavigationBar:(NSString *)title;
-(void)hideNavigationBar:(BOOL)hide;
-(void)addRightBarButtonwithTitle:(NSString *)title barbuttonStyle:(UIBarButtonItemStyle)style;


@end
