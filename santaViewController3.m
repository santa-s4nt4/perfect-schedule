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
    ud = [NSUserDefaults standardUserDefaults];
    //保存・更新
    NSString *str = textfield.text;
    NSLog(@";%@",str);
    [ud setObject:str forKey:@"myString"];
    
    NSString *str2 = textfield2.text;
    NSLog(@";%@",str2);
    [ud setObject:str2 forKey:@"myString2"];
    
    NSString *str3 = textfield3.text;
    NSLog(@";%@",str3);
    [ud setObject:str3 forKey:@"myString3"];
    
    NSString *str4 = textfield4.text;
    NSLog(@";%@",str4);
    [ud setObject:str4 forKey:@"myString4"];
    
    NSString *str5 = textfield5.text;
    NSLog(@";%@",str5);
    [ud setObject:str5 forKey:@"myString5"];
    
    NSString *str6 = textfield6.text;
    NSLog(@";%@",str6);
    [ud setObject:str6 forKey:@"myString6"];
    
    NSString *str7 = textfield7.text;
    NSLog(@";%@",str7);
    [ud setObject:str7 forKey:@"myString7"];
    
    NSString *str8 = textfield8.text;
    NSLog(@";%@",str8);
    [ud setObject:str8 forKey:@"myString8"];
    
    NSString *str9 = textfield9.text;
    NSLog(@";%@",str9);
    [ud setObject:str9 forKey:@"myString9"];
    
    NSString *str10 = textfield10.text;
    NSLog(@";%@",str10);
    [ud setObject:str10 forKey:@"myString10"];
    
    NSString *str11 = textfield11.text;
    NSLog(@";%@",str11);
    [ud setObject:str11 forKey:@"myString11"];

    NSString *str12 = textfield12.text;
    NSLog(@";%@",str12);
    [ud setObject:str12 forKey:@"myString12"];
    
    [ud synchronize];
    
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
