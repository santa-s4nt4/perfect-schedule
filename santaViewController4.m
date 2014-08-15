//
//  santaViewController4.m
//  PerfectSchedle
//
//  Created by santa naruse on 2014/06/07.
//  Copyright (c) 2014年 santa naruse. All rights reserved.
//

#import "santaViewController4.h"

@interface santaViewController4 ()
@property (weak, nonatomic) IBOutlet UIDatePicker *myDatePicker;
- (IBAction)changeDatePicker:(id)sender;


@end

@implementation santaViewController4

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

-(IBAction)save
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
    
    NSString *indent = [str stringByAppendingString:@"\n"];
    NSLog(@"test:%@",indent);
    
    NSString *str2 =[hoge3 stringByAppendingString:hoge4];
    NSLog(@"test:%@",str2);
    
    NSString *indent2 = [str2 stringByAppendingString:@"\n"];
    NSLog(@"test:%@",indent2);
    
    NSString *str3 = [hoge5 stringByAppendingString:hoge6];
    NSLog(@"test:%@",str3);
    
    NSString *indent3 = [str3 stringByAppendingString:@"\n"];
    NSLog(@"test:%@",indent3);
    
    NSString *str4 = [hoge7 stringByAppendingString:hoge8];
    NSLog(@"test:%@",str4);
    
    NSString *indent4 = [str4 stringByAppendingString:@"\n"];
    NSLog(@"test:%@",indent4);
    
    NSString *str5 = [hoge9 stringByAppendingString:hoge10];
    NSLog(@"test:%@",str5);
    
    NSString *indent5 = [str5 stringByAppendingString:@"\n"];
    NSLog(@"test:%@",indent5);
    
    NSString *str6 = [hoge11 stringByAppendingString:hoge12];
    NSLog(@"test:%@",str6);
    
    NSString *indent6 = [str6 stringByAppendingString:@"\n"];
    NSLog(@"test:%@",indent6);
    
    NSString *combine = [indent stringByAppendingString:indent2];
    NSLog(@"test:%@",combine);
    
    NSString *combine2 = [indent3 stringByAppendingString:indent4];
    NSLog(@"test:%@",combine2);
    
    NSString *combine3 = [indent5 stringByAppendingString:indent6];
    NSLog(@"test:%@",combine3);
    
    NSString *whole = [combine stringByAppendingString:combine2];
    NSLog(@"test:%@",whole);
    
    NSString *whole2 = combine3;
    NSLog(@"test:%@",whole2);
    
    NSString *whole3 = [whole stringByAppendingString:whole2];
    NSLog(@"test:%@",whole3);
    
    // messageにいい感じに放り込む
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"タイマー設定" message:@"タイマーを設定しました。" delegate:
                              self cancelButtonTitle:nil otherButtonTitles:@"OK", nil];
    [alertView show];
    
    //現在の時刻を取得
    NSDate *now = [NSDate date];
    //時刻表時のフォーマッターを作る
    NSDateFormatter *df = [[NSDateFormatter alloc] init];
    [df setDateFormat:@"yyyy/MM/dd HH:mm"];
    //時刻をフォーマッターの書式で文字に変換する
    NSString *datestr = [df stringFromDate:now];
    //出力する
    NSLog(@"%@",datestr);
    
    NSTimeInterval since = [self.myDatePicker.date timeIntervalSinceNow];
    NSLog(@"picketDate:%f",since);
    
    UILocalNotification *notification = [[UILocalNotification alloc] init];
    NSInteger AddingTimeMin = since;
    notification.fireDate = [[NSDate date] dateByAddingTimeInterval:AddingTimeMin];
    
    notification.timeZone = [NSTimeZone defaultTimeZone];
    notification.alertBody = whole3;
    notification.alertAction = @"OK";
    notification.soundName = UILocalNotificationDefaultSoundName;
    [[UIApplication sharedApplication] scheduleLocalNotification:notification];
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

- (IBAction)changeDatePicker:(id)sender
{
//    NSDateFormatter *df = [[NSDateFormatter alloc] init];
//    [df setDateFormat:@"yyyy/MM/dd HH:mm"];
//    NSDate *pDate = [df stringFromDate:self.myDatePicker.date];
//    NSString *pickerDatestr = [df stringFromDate:self.myDatePicker.date];
    NSTimeInterval since = [self.myDatePicker.date timeIntervalSinceNow];
    NSLog(@"picketDate:%f",since);
}

@end
