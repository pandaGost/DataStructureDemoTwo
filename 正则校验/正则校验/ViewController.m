//
//  ViewController.m
//  正则校验
//
//  Created by 杨冠军 on 17/11/20.
//  Copyright © 2017年 com.100credit.www. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSString *testStr = @"0";
    NSLog(@"正整数校验结果:%d",[self checkCapitalNumberWith:testStr]);
    
    NSString *testStr2 = @"方法";
    NSLog(@"座机号校验结果:%d",[self checkTelephoneNumberWith:testStr2]);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



#pragma mark - 正则校验方法
//正整数
- (BOOL)checkCapitalNumberWith:(NSString *)capitalNumber
{
    NSString *regex = @"^[1-9]\\d*$";
    NSPredicate *capitalNumberTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",regex];
    if ([capitalNumberTest evaluateWithObject:capitalNumber]) {
        return YES;
    }else {
        return NO;
    }
    
}

//座机号校验
- (BOOL)checkTelephoneNumberWith:(NSString *)telephoneNumber
{
    NSString *regex = @"0\\d{2,3}-\\d{5,9}|0\\d{2,3}-\\d{5,9}";
    NSPredicate *telephoneNumberTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",regex];
    if ([telephoneNumberTest evaluateWithObject:telephoneNumber]) {
        return YES;
    }else {
        return NO;
    }
}



@end
