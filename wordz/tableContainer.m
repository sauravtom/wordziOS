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

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (cell == nil) {
        
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
        
    }
    
    // Configure the cell...
    //cell.textLabel.text = [yourarray objectAtIndex:indexPath.row];
    cell.textLabel.text = @"foo";
    
    return cell;
    
}


@end
