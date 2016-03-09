//
//  YDisplayItem.h
//  YBaseDisplay
//
//  Created by Dylan on 15/12/12.
//  Copyright © 2015年 dylan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface YDisplayItem : NSObject




@property (nonatomic, copy) NSString * title;  //左边的文字


@property (nonatomic, copy) NSString * subTitle; //子标题， 右边的提示文字

@property (nonatomic, copy) dispatch_block_t CallBackBlock;   //点击每一个cell所对应的操作

+ (instancetype)itemWithIcon:(NSString *)icon title:(NSString *)title;
+ (instancetype)itemWithTitle:(NSString *)title;




@end
