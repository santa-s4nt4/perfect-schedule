//
//  santaViewController5.m
//  PerfectSchedle
//
//  Created by santa naruse on 2014/06/07.
//  Copyright (c) 2014年 santa naruse. All rights reserved.
//

#import "santaViewController5.h"

@interface santaViewController5 ()

@end

@implementation santaViewController5

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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)home
{

    [self dismissViewControllerAnimated:YES completion:nil];
}

-(IBAction)tw
{
    SLComposeViewController *twVC =
    [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeTwitter];
    
    [twVC setInitialText:@"PerfectSchedule!"];
    [self presentViewController:twVC animated:YES completion:nil];
}

-(IBAction)fb
{
    SLComposeViewController *fbVC =
    [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeFacebook];
    
    [fbVC setInitialText:@"PerfectSchedule!"];
    [self presentViewController:fbVC animated:YES completion:nil];
}

-(IBAction)schedule
{
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];  // 取得
    [ud setObject:self forKey:@"myString"];
    [ud synchronize];
    
    /*
    NSString *rStr = [ud stringForKey:@"myString"];
    NSLog(@"%@",rStr);
    
    NSString *rStr2 = [ud stringForKey:@"myString"];
    NSLog(@"%@",rStr2);
    
    NSString *rStr3 = [ud stringForKey:@"myString"];
    NSLog(@"%@",rStr3);
    
    NSString *rStr4 = [ud stringForKey:@"myString"];
    NSLog(@"%@",rStr4);

    NSString *rStr5 = [ud stringForKey:@"myString"];
    NSLog(@"%@",rStr5);

    NSString *rStr6 = [ud stringForKey:@"myString"];
    NSLog(@"%@",rStr6);

    NSString *rStr7 = [ud stringForKey:@"myString"];
    NSLog(@"%@",rStr7);

    NSString *rStr8 = [ud stringForKey:@"myString"];
    NSLog(@"%@",rStr8);

    NSString *rStr9 = [ud stringForKey:@"myString"];
    NSLog(@"%@",rStr9);

    NSString *rStr10 = [ud stringForKey:@"myString"];
    NSLog(@"%@",rStr10);
    
    NSString *rStr11 = [ud stringForKey:@"myString"];
    NSLog(@"%@11",rStr11);
    
    NSString *rStr12 = [ud stringForKey:@"myString"];
    NSLog(@"%@",rStr12);
    */
    
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"時間割" message:@"myString" delegate:
                              self cancelButtonTitle:nil otherButtonTitles:@"OK", nil];
    [alertView show];
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
