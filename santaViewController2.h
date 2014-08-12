//
//  santaViewController2.h
//  PerfectSchedle
//
//  Created by santa naruse on 2014/06/07.
//  Copyright (c) 2014年 santa naruse. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface santaViewController2 : UIViewController

//データソース宣言、テーブルビュー用デリゲート宣言
<UITableViewDataSource, UITableViewDelegate>
{
    IBOutlet UITableView *table; //Storyboatd上のTableView

    NSMutableArray *nameArry;
    NSMutableArray *jobArry;
    NSMutableArray *imageArry;}

-(IBAction)back;

@end
