//
//  ViewController.m
//  wordz
//
//  Created by Saurav Tomar on 28/03/15.
//  Copyright (c) 2015 Stom. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.initialTable=[[UITableView alloc]initWithFrame:self.view.frame];
    [self.initialTable setDataSource:self];
    [self.initialTable setDelegate:self];
    [self.view addSubview:self.initialTable];
    [self.initialTable registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
    [self.view setBackgroundColor:[UIColor orangeColor]];
    [self.initialTable setSeparatorStyle:UITableViewCellSeparatorStyleNone];
    [self.initialTable setAllowsSelection:NO];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 3;
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 250;
    
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:@"cell"];
    UIImageView *image=[[UIImageView alloc]init];
    image.frame=CGRectMake(0, 0, CGRectGetWidth(self.view.frame), 200);
    [image setContentMode:UIViewContentModeScaleAspectFit];
    
    UILabel *textLabelThingy=[[UILabel alloc] initWithFrame:CGRectMake(0,CGRectGetMaxY(image.frame), CGRectGetWidth(self.view.frame), 50)];
    [cell addSubview:textLabelThingy];
    [textLabelThingy setTextColor:[UIColor whiteColor]];
    
    switch (indexPath.row)
    {
        case 0:
            cell.backgroundColor=[UIColor colorWithRed:222.0/256 green:226.0/256 blue:214.0/256 alpha:1];
            [image setImage:[UIImage imageNamed:@"debate"]];
            [cell addSubview:image];
            [textLabelThingy setText:@"asdfjknasd"];
            break;
        case 1:
            cell.backgroundColor=[UIColor colorWithRed:202.0/256 green:207.0/256 blue:214.0/256 alpha:1];
            [image setImage:[UIImage imageNamed:@"clock_dark"]];
            [cell addSubview:image];
            [textLabelThingy setText:@"asdfjknasd"];
            break;
        case 2:
            cell.backgroundColor=[UIColor colorWithRed:222.0/256 green:227.0/256 blue:114.0/256 alpha:1];
            [image setImage:[UIImage imageNamed:@"ic_support"]];
            [cell addSubview:image];
            [textLabelThingy setText:@"asdfjknasd"];
            break;
    
        default:
            break;
    }
    return cell;
}
@end

