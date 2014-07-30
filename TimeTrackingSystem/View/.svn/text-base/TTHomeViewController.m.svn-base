//
//  TTHomeViewController.m
//  TimeTrackingSystem
//
//  Created by Govind on 20/05/14.
//  Copyright (c) 2014 Experion. All rights reserved.
//

#import "TTHomeViewController.h"
#import "TTUserService.h"
#import "TTServiceFactory.h"
#import "TTUser.h"

@interface TTHomeViewController ()<UITableViewDataSource,UITableViewDelegate>{
    NSArray *dataSource;
}

@end

@implementation TTHomeViewController

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
    
    
    [self getUserDetails];
    // Do any additional setup after loading the view
    
  // [self performSegueWithIdentifier:@"DetailView" sender:self];
}

-(void)getUserDetails{
    
    TTUserService *userService = [TTServiceFactory getUserService];
    [userService getUserDetailsWithBlock:^(NSArray *allUsers) {
        dataSource = allUsers;
        [self testRelationship];
    }];
}

-(void)testRelationship{
    
    TTUser *user1, *user2, *user3, *user4, *user5;
    
    for (TTUser *user in dataSource) {
        if ([user.empId integerValue] == 1) {
            user1 = user;
        }
        if ([user.empId integerValue] == 2) {
            user2 = user;
        }
        if ([user.empId integerValue] == 4) {
            user3 = user;
        }
        if ([user.empId integerValue] == 7) {
            user4 = user;
        }
        if ([user.empId integerValue] == 8) {
            user5 = user;
        }
    }
    
   /* [user1 addDirectReportsObject:user2];
    
    [user2 addDirectReportsObject:user3];
    
    [user3 addDirectReportsObject:user4];
    
    [user3 addDirectReportsObject:user5];
    
    [user3 addManagersObject:user2];
    
    [user2 addManagersObject:user1];
    
    [[TTRepository sharedRepository]saveContext];*/
    
    NSLog(@"%@",user2.directReports);
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

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [dataSource count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{

    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Cell"];
    }
    

    TTUser *user = [dataSource objectAtIndex:indexPath.row];
    cell.textLabel.text = user.empName;
    
    return cell;
}





@end
