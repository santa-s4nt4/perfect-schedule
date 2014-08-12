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
    NSDateFormatter *df = [[NSDateFormatter alloc] init];
    [df setDateFormat:@"yyyy/MM/dd HH:mm"];
    NSString *datestr = [df stringFromDate:self.myDatePicker.date];
    NSLog(@"%@",datestr);
}

@end
