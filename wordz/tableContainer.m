//
//  tableContainer.m
//  wordz
//
//  Created by Robin Malhotra on 28/03/15.
//  Copyright (c) 2015 Stom. All rights reserved.
//

#import "tableContainer.h"

@implementation tableContainer

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

-(id)initWithFrame:(CGRect)frame
{
    self=[super initWithFrame:frame];
    self.backgroundColor=[UIColor greenColor];
    UITableView *textTable=[[UITableView alloc]initWithFrame:self.frame];
    [textTable setDataSource:self];
    [textTable setDataSource:self];
    [self addSubview:textTable];
    return self;
}
-(id)initWithFrame:(CGRect)frame andData:(NSMutableArray *)data
{
    self=[super initWithFrame:frame];
    self.backgroundColor=[UIColor greenColor];
    UITableView *textTable=[[UITableView alloc]initWithFrame:self.frame];
    [textTable setDataSource:self];
    [textTable setDataSource:self];
    [self addSubview:textTable];
    
    self.data=data;
    return self;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.data count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (cell == nil) {
        
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
        
    }
    
    // Configure the cell...
    //cell.textLabel.text = [yourarray objectAtIndex:indexPath.row];
    cell.textLabel.text = [self.data objectAtIndex:indexPath.row];
    
    return cell;
    
}


@end
