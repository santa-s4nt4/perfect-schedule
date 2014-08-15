//
//  santaViewController4.h
//  PerfectSchedle
//
//  Created by santa naruse on 2014/06/07.
//  Copyright (c) 2014年 santa naruse. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface santaViewController4 : UIViewController
{
    int hour; //アラートがなるまでの時間
    int minute; //アラートがなるまでの分
    int second; //アラートがなるまでの秒
    
    NSTimer *timer;
}


-(IBAction)save;

-(IBAction)back;

@end
