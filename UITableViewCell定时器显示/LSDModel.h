//
//  LSDModel.h
//  UITableViewCell定时器显示
//
//  Created by 神州锐达 on 16/11/22.
//  Copyright © 2016年 OnePiece. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LSDModel : NSObject

///
@property(assign,nonatomic)NSInteger time;
///减一操作
-(void)timeDown;

-(NSString *)currentTime;

@end
