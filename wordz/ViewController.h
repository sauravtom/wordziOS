//
//  ViewController.h
//  wordz
//
//  Created by Saurav Tomar on 28/03/15.
//  Copyright (c) 2015 Stom. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>
@property (nonatomic,strong)UITableView *initialTable;

@end

