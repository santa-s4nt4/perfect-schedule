//
//  santaViewController2.m
//  PerfectSchedle
//
//  Created by santa naruse on 2014/06/07.
//  Copyright (c) 2014年 santa naruse. All rights reserved.
//

#import "santaViewController2.h"

@interface santaViewController2 ()

@end

@implementation santaViewController2

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    table.delegate = self ;
    table.dataSource = self ;
    
    nameArry = [[NSMutableArray alloc] initWithObjects:
                @"月曜日",
                @"火曜日",
                @"水曜日",
                @"木曜日",
                @"金曜日",
                @"土曜日",nil];
    jobArry = [[NSMutableArray alloc] initWithObjects:
               @"Monday",
               @"Tuesday",
               @"Wednesday",
               @"Thursday",
               @"Friday",
               @"Saturday",nil];

    imageArry = [[NSMutableArray alloc] initWithObjects:
                 [UIImage imageNamed:@"月.jpg"],
                 [UIImage imageNamed:@"火.jpg"],
                 [UIImage imageNamed:@"水.jpg"],
                 [UIImage imageNamed:@"木.jpg"],
                 [UIImage imageNamed:@"金.jpg"],
                 [UIImage imageNamed:@"土.jpg"],
                 nil];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - テーブルビュー（データソースメソッド）
- (NSInteger)tableView:(UITableView *)tableView
 numberOfRowsInSection:(NSInteger)section
{
    return [nameArry count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView
cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *cellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView
                             dequeueReusableCellWithIdentifier:cellIdentifier];
    
    if (!cell) {
        cell = [[UITableViewCell alloc]initWithStyle:
                UITableViewCellStyleDefault reuseIdentifier:
                cellIdentifier];
    }
    
    /* -- セルにテキストを設定 --*/
    cell.textLabel.text = [nameArry objectAtIndex:indexPath.row];
    
    /* -- セルのimageView（元から備え付けられている）に画像表示 --*/
    cell.imageView.image = [imageArry objectAtIndex:indexPath.row];
    
    /* -- セルの小ラベルに職業を表示 --*/
    cell.detailTextLabel.text = [jobArry objectAtIndex:indexPath.row];
    
    return cell;
}

-(IBAction)back
{
    [self dismissViewControllerAnimated:YES completion:nil]; //Topに戻る
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
