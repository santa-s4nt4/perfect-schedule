//
//  santaViewController3.m
//  PerfectSchedle
//
//  Created by santa naruse on 2014/06/07.
//  Copyright (c) 2014年 santa naruse. All rights reserved.
//

#import "santaViewController3.h"

@interface santaViewController3 (){
    // NSUserDefaultsに初期値を登録する
    NSUserDefaults *ud;
}
@property (weak, nonatomic) IBOutlet UITextField *myTextField;

@end

@implementation santaViewController3

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
    
    textfield.delegate = self;
    textfield2.delegate = self;
    textfield3.delegate = self;
    textfield4.delegate = self;
    textfield5.delegate = self;
    textfield6.delegate = self;
    textfield7.delegate = self;
    textfield8.delegate = self;
    textfield9.delegate = self;
    textfield10.delegate = self;
    textfield11.delegate = self;
    textfield12.delegate = self;

    //取得
    /*
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    [ud setObject:textfield.text forKey:@"myString"];
    [ud setObject:textfield2.text forKey:@"myString"];
    [ud setObject:textfield3.text forKey:@"myString"];
    [ud setObject:textfield4.text forKey:@"myString"];
    [ud setObject:textfield5.text forKey:@"myString"];
    [ud setObject:textfield6.text forKey:@"myString"];
    [ud setObject:textfield7.text forKey:@"myString"];
    [ud setObject:textfield8.text forKey:@"myString"];
    [ud setObject:textfield9.text forKey:@"myString"];
    [ud setObject:textfield10.text forKey:@"myString"];
    [ud setObject:textfield11.text forKey:@"myString"];
    [ud setObject:textfield12.text forKey:@"myString"];
     */
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    //キーボードを消す
    [textfield resignFirstResponder];
    [textfield2 resignFirstResponder];
    [textfield3 resignFirstResponder];
    [textfield4 resignFirstResponder];
    [textfield5 resignFirstResponder];
    [textfield6 resignFirstResponder];
    [textfield7 resignFirstResponder];
    [textfield8 resignFirstResponder];
    [textfield9 resignFirstResponder];
    [textfield10 resignFirstResponder];
    [textfield11 resignFirstResponder];
    [textfield12 resignFirstResponder];
    return  YES;
    
    ud = [NSUserDefaults standardUserDefaults];
    //保存・更新
    NSString *str = textfield.text;
    [ud setObject:str forKey:@"myString"];
    
    NSString *str2 = textfield.text;
    [ud setObject:str2 forKey:@"myString"];
    
    NSString *str3 = textfield.text;
    [ud setObject:str3 forKey:@"myString"];
    
    NSString *str4 = textfield.text;
    [ud setObject:str4 forKey:@"myString"];
    
    NSString *str5 = textfield.text;
    [ud setObject:str5 forKey:@"myString"];
    
    NSString *str6 = textfield.text;
    [ud setObject:str6 forKey:@"myString"];
    
    NSString *str7 = textfield.text;
    [ud setObject:str7 forKey:@"myString"];
    
    NSString *str8 = textfield.text;
    [ud setObject:str8 forKey:@"myString"];
    
    NSString *str9 = textfield.text;
    [ud setObject:str9 forKey:@"myString"];
    
    NSString *str10 = textfield.text;
    [ud setObject:str10 forKey:@"myString"];
    
    NSString *str11 = textfield.text;
    [ud setObject:str11 forKey:@"myString"];
    
    NSString *str12 = textfield.text;
    [ud setObject:str12 forKey:@"myString"];
    
//    [ud synchronize];
    

}
-(IBAction)test{
         NSString *hoge = [[NSUserDefaults standardUserDefaults] stringForKey:@"myString"];
    NSLog(@"test:%@",hoge);
}

-(IBAction)back
{
    [self dismissViewControllerAnimated:YES completion:nil];
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
