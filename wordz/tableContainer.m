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
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:@"cell"];
    UIImageView *image=[[UIImageView alloc]init];
    return cell;
}


@end
