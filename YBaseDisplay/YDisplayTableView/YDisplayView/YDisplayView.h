//
//  YDisplayView.h
//  YBaseDisplay
//
//  Created by Dylan on 15/12/12.
//  Copyright © 2015年 dylan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "YDisplayItem.h"

@interface YDisplayView : UIView<UITableViewDataSource,UITableViewDelegate>


@property (strong,nonatomic)UITableView* tableView;


@property (strong,nonatomic) NSArray*items;


//- (void)setDisplayViewWithArray:(NSArray*)array;

@end
