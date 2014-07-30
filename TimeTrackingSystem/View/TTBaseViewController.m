//
//  TTBaseViewController.m
//  TimeTrackingSystem
//
//  Created by Govind on 20/05/14.
//  Copyright (c) 2014 Experion. All rights reserved.
//

#import "TTBaseViewController.h"

@interface TTBaseViewController (){
  
}


@end

@implementation TTBaseViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
  
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


-(void)hideBackButton{
    
    self.navigationItem.hidesBackButton = YES;
    
}

-(void)showBackButton{
   self.navigationController.navigationItem.hidesBackButton = NO;
}

-(void)setTitleForNavigationBar:(NSString *)title{
    self.navigationItem.title = title;
}

-(void)hideNavigationBar:(BOOL)hide{
    self.navigationController.navigationBarHidden = hide;
}

-(void)addRightBarButtonwithTitle:(NSString *)title barbuttonStyle:(UIBarButtonItemStyle)style{
    
    UIBarButtonItem *rightButton = [[UIBarButtonItem alloc] initWithTitle:title style:style target:self action:@selector(rightBarButtonClicked:)];
    self.navigationItem.rightBarButtonItem = rightButton;
}

-(void)rightBarButtonClicked:(id)sender{
    NSLog(@"Override this method to get right bar button action");
}
@end
