//
//  santaViewController.m
//  PerfectSchedle
//
//  Created by santa naruse on 2014/06/07.
//  Copyright (c) 2014年 santa naruse. All rights reserved.
//

#import "santaViewController.h"

@interface santaViewController ()

@end

@implementation santaViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)twitter
{
    SLComposeViewController *twVC =
    [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeTwitter];
    
    [twVC setInitialText:@"PerfectSchedule!"];
    [self presentViewController:twVC animated:YES completion:nil];
}

-(IBAction)face
{
    SLComposeViewController *fbVC =
    [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeFacebook];
    
    [fbVC setInitialText:@"PerfectSchedule!"];
    [self presentViewController:fbVC animated:YES completion:nil];
}

-(IBAction)schedle
{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Explanation(説明)"
                                                    message:@"このアプリは学校の時間割・持ち物を設定してそれをアラートで提示するものです。"
                                                   delegate:self
                                          cancelButtonTitle:@"OK"
                                          otherButtonTitles:nil];
    [alert show];

}

-(IBAction)deleteButton
{
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];  // 取得
    [ud removeObjectForKey:@"myString"];  //myStringを削除する
}

@end
