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
    NSString *hoge = [[NSUserDefaults standardUserDefaults] objectForKey:@"myString"];
    NSLog(@"test:%@",hoge);
    
    NSString *hoge2 = [[NSUserDefaults standardUserDefaults] objectForKey:@"myString2"];
    NSLog(@"test:%@",hoge2);
    
    NSString *hoge3 = [[NSUserDefaults standardUserDefaults] objectForKey:@"myString3"];
    NSLog(@"test:%@",hoge3);
    
    NSString *hoge4 = [[NSUserDefaults standardUserDefaults] objectForKey:@"myString4"];
    NSLog(@"test:%@",hoge4);
    
    NSString *hoge5 = [[NSUserDefaults standardUserDefaults] objectForKey:@"myString5"];
    NSLog(@"test:%@",hoge5);
    
    NSString *hoge6 = [[NSUserDefaults standardUserDefaults] objectForKey:@"myString6"];
    NSLog(@"test:%@",hoge6);
    
    NSString *hoge7 = [[NSUserDefaults standardUserDefaults] objectForKey:@"myString7"];
    NSLog(@"test:%@",hoge7);
    
    NSString *hoge8 = [[NSUserDefaults standardUserDefaults] objectForKey:@"myString8"];
    NSLog(@"test:%@",hoge8);
    
    NSString *hoge9 = [[NSUserDefaults standardUserDefaults] objectForKey:@"myString9"];
    NSLog(@"test:%@",hoge9);
    
    NSString *hoge10 = [[NSUserDefaults standardUserDefaults] objectForKey:@"myString10"];
    NSLog(@"test:%@",hoge10);
    
    NSString *hoge11 = [[NSUserDefaults standardUserDefaults] objectForKey:@"myString11"];
    NSLog(@"test:%@",hoge11);
    
    NSString *hoge12 = [[NSUserDefaults standardUserDefaults] objectForKey:@"myString12"];
    NSLog(@"test:%@",hoge12);
    
    [ud synchronize];
    
    //TODO: NSString 連結
    NSString *str = [hoge stringByAppendingString:hoge2];
    NSLog(@"test:%@",str);
    
    NSString *str2 =[hoge3 stringByAppendingString:hoge4];
    NSLog(@"test:%@",str2);
    
    NSString *str3 = [hoge5 stringByAppendingString:hoge6];
    NSLog(@"test:%@",str3);
    
    NSString *str4 = [hoge7 stringByAppendingString:hoge8];
    NSLog(@"test:%@",str4);
    
    NSString *str5 = [hoge9 stringByAppendingString:hoge10];
    NSLog(@"test:%@",str5);
    
    NSString *str6 = [hoge11 stringByAppendingString:hoge12];
    NSLog(@"test:%@",str6);
    
    
    NSString *league = [str stringByAppendingString:str2];
    NSLog(@"test:%@",league);
    
    NSString *league2 = [str3 stringByAppendingString:str4];
    NSLog(@"test:%@",league2);
    
    NSString *league3 = [str5 stringByAppendingString:str6];
    NSLog(@"test:%@",league3);
    
    
    NSString *all = [league stringByAppendingString:league2];
    NSLog(@"test:%@",all);
    
    NSString *all2 = league3;
    NSLog(@"test:%@",all2);
    
    NSString *all3 = [all stringByAppendingString:all2];
    
    // messageにいい感じに放り込む
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"時間割" message:all3 delegate:
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
