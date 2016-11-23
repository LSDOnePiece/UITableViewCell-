//
//  LSDTableViewCell.h
//  UITableViewCell定时器显示
//
//  Created by 神州锐达 on 16/11/22.
//  Copyright © 2016年 OnePiece. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LSDModel.h"

@interface LSDTableViewCell : UITableViewCell

+(instancetype)tableViewCellWithTable:(UITableView *)tableView;

@property (weak, nonatomic) IBOutlet UILabel *timeLabel;

-(void)loadModel:(LSDModel *)model indexPath:(NSIndexPath *)indexPath;

///
@property(assign,nonatomic)BOOL isDisplayed;

///
@property(strong,nonatomic)LSDModel *model;

///
@property(strong,nonatomic)NSIndexPath *indexPath;

@end
