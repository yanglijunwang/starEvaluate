//
//  ViewController.m
//  starEvaluate
//
//  Created by 杨礼军 on 2017/2/10.
//  Copyright © 2017年 杨礼军. All rights reserved.
//

#import "ViewController.h"
#import "YLJ_stareEvaluate.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    CGFloat starWidth = 20.f;
    CGFloat space = 5.f;
    BOOL isCanTap = YES;
    CGFloat LeftPadding = 170.f;
    YLJ_stareEvaluate * stareEvaluate = [[YLJ_stareEvaluate alloc] initWithFrame:CGRectMake(LeftPadding, LeftPadding, self.view.width - LeftPadding, 44) starIndex:2 starWidth:starWidth space:space defaultImage:nil lightImage:nil isCanTap:isCanTap];
    
    stareEvaluate.backgroundColor = [UIColor clearColor];
    stareEvaluate.starEvaluateBlock = ^(YLJ_stareEvaluate * starView, NSInteger starIndex){
        NSLog(@"评分为%ld",starIndex);
        
    };
    [self.view addSubview:stareEvaluate];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
