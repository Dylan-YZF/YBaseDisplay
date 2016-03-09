//
//  YDisplayItem.m
//  YBaseDisplay
//
//  Created by Dylan on 15/12/12.
//  Copyright © 2015年 dylan. All rights reserved.
//

#import "YDisplayItem.h"

@implementation YDisplayItem



+(instancetype)itemWithIcon:(NSString *)icon title:(NSString *)title{
    YDisplayItem *item =[[self alloc] init];
    
    
    item.title=title;
    
    return item;
}

+(instancetype) itemWithTitle:(NSString *)title{
    return [self itemWithIcon:nil title:title];
}





@end
