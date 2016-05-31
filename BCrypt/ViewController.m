//
//  ViewController.m
//  BCrypt
//
//  Created by 张昭 on 16/5/31.
//  Copyright © 2016年 张昭. All rights reserved.
//

#import "ViewController.h"
#import "JFBCrypt.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    NSString *salt = [JFBCrypt generateSaltWithNumberOfRounds:10]; // 第二个参数固定值 10
    NSString *encode = [JFBCrypt hashPassword:@"123456" withSalt:salt];
    NSLog(@"随机盐值：%@", salt);
    NSLog(@"盐值加密：%@", encode);
    // $2a$08$uJdDVBAbr8Snjykke9dh6ubLM8Y7qXmO7qR8TPohHn.sTNcrsW7Ze
    // $2a$08$rQ2DiNBJfeXF6IwhCTJSHu9yvj5OD6fwiVDrlwmr4009lay9DrL8O
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
