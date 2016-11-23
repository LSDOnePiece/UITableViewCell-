//
//  LSDModel.m
//  UITableViewCell定时器显示
//
//  Created by 神州锐达 on 16/11/22.
//  Copyright © 2016年 OnePiece. All rights reserved.
//

#import "LSDModel.h"



@implementation LSDModel

-(void)timeDown
{
    _time -= 1;
}

-(NSString *)currentTime
{
    return [NSString stringWithFormat:@"%02zd:%02zd:%02zd",_time/3600,_time/60%60,_time%60];
}


@end
