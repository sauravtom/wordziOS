//
//  tableContainer.h
//  wordz
//
//  Created by Robin Malhotra on 28/03/15.
//  Copyright (c) 2015 Stom. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface tableContainer : UIView<UITableViewDataSource,UITableViewDelegate>
@property(nonatomic,strong) NSMutableArray *data;

-(id)initWithFrame:(CGRect)frame;
-(id)initWithFrame:(CGRect)frame andData:(NSMutableArray *)data;

@end
