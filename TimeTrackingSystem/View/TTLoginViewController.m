//
//  TTLoginViewController.m
//  TimeTrackingSystem
//
//  Created by Govind on 20/05/14.
//  Copyright (c) 2014 Experion. All rights reserved.
//

#import "TTLoginViewController.h"
#import "TTLoginCustomCell.h"

#define cell_Identifier @"LoginCustomCell"

@interface TTLoginViewController (){
    NSArray *displaytext;
}



@end

@implementation TTLoginViewController

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
    displaytext = [NSArray arrayWithObjects:@"Username",@"Password", nil];
   
    // Do any additional setup after loading the view.
}

-(void)viewWillAppear:(BOOL)animated{
     [self hideNavigationBar:NO];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [displaytext count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    static NSString *cellIdentifier = cell_Identifier;
    TTLoginCustomCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (cell == nil) {
        NSArray *topLevelObject = nil;
        topLevelObject = [[NSBundle mainBundle]loadNibNamed:@"TTLoginCustomCell" owner:self options:nil];
        for (id currentObject in topLevelObject){
            if ([currentObject isKindOfClass:[UITableViewCell class]]){
                cell =  (TTLoginCustomCell *) currentObject;
                cell.selectionStyle = UITableViewCellSelectionStyleNone;
                break;
            }
        }
    }
    cell.lblTitle.text = [displaytext objectAtIndex:indexPath.row];
    cell.txtfieldContent.placeholder = [displaytext objectAtIndex:indexPath.row];
    cell.txtfieldContent.tag = indexPath.row;
    cell.txtfieldContent.textAlignment = NSTextAlignmentCenter;
    return cell;
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    switch (textField.tag) {
        case 0:{
            UITextField *passwordField = (UITextField *)[self.view viewWithTag:1];
            [passwordField becomeFirstResponder];
        }
            break;
        case 1:{
            [textField resignFirstResponder];
        }
            break;
        default:
            break;
    }
    return YES;
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
- (IBAction)btnLoginClicked:(id)sender {
     [self hideNavigationBar:YES];
}


@end
