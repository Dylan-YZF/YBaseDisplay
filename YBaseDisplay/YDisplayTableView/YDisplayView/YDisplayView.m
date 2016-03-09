//
//  YDisplayView.m
//  YBaseDisplay
//
//  Created by Dylan on 15/12/12.
//  Copyright © 2015年 dylan. All rights reserved.
//

#import "YDisplayView.h"

@implementation YDisplayView



- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        
        self.tableView = [[UITableView alloc]initWithFrame:self.bounds style:UITableViewStylePlain];
        self.tableView.dataSource = self;
        self.tableView.delegate = self;
//        [self.tableView setSeparatorStyle:UITableViewCellSeparatorStyleNone];
        [self addSubview:self.tableView];
    }
    return self;
}


#pragma mark - TableView data source


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return _items.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString* cellIdentifier = @"cell";
    
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    
    YDisplayItem* item = [_items objectAtIndex:indexPath.row];
    
    cell.textLabel.text = item.title;
    
    return cell;
}



-(void)setItems:(NSArray *)items{
    
    _items = items;
    
    [self.tableView reloadData];
    
    
}



/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
