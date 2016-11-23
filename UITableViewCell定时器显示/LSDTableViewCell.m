//
//  LSDTableViewCell.m
//  UITableViewCell定时器显示
//
//  Created by 神州锐达 on 16/11/22.
//  Copyright © 2016年 OnePiece. All rights reserved.
//

#import "LSDTableViewCell.h"

@implementation LSDTableViewCell

+(instancetype)tableViewCellWithTable:(UITableView *)tableView
{

    static NSString *reusedID = @"reusedID";
    
    UINib *nib = [UINib nibWithNibName:@"LSDTableViewCell" bundle:nil];
    
    [tableView registerNib:nib forCellReuseIdentifier:reusedID];
    
    LSDTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:reusedID];
    
    if (cell == nil) {
        cell = [[LSDTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:reusedID];
    }
    
    [cell registerNotification];
    
    return  cell;
}

-(void)loadModel:(LSDModel *)model indexPath:(NSIndexPath *)indexPath
{

    [self storeModel:model indexPath:indexPath];
    self.timeLabel.text = model.currentTime;
    
}

-(void)storeModel:(LSDModel *)model indexPath:(NSIndexPath *)indexPath
{
    
    self.model = model;
    self.indexPath = indexPath;
    
}

-(void)registerNotification
{

    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(notificationCenterEvent) name:@"LSDTimeNotification" object:nil];
}

-(void)dealloc
{

    [[NSNotificationCenter defaultCenter] removeObserver:self name:@"LSDTimeNotification" object:nil];
}

-(void)notificationCenterEvent
{

    if (self.isDisplayed) {
        [self loadModel:self.model indexPath:self.indexPath];
    }
    
}

@end
