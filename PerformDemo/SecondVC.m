//
//  SecondVC.m
//  PerformDemo
//
//  Created by cendi on 2019/6/21.
//  Copyright © 2019 cendi. All rights reserved.
//

#import "SecondVC.h"
#import "RobotManager.h"

@interface SecondVC ()
///
@property (nonatomic,strong)UILabel *label;
///
@property (nonatomic,strong)dispatch_source_t timer1;
///
@property (nonatomic,strong)dispatch_source_t timer2;
///
@property (nonatomic,strong)dispatch_source_t timer3;
@end

@implementation SecondVC
- (void)viewWillAppear:(BOOL)animated{
    [RobotManager shareRobotManager].step1Block = ^{
        self.label.text = @"1";
    };
    [RobotManager shareRobotManager].step2Block = ^{
        self.label.text = @"2";
    };
    [RobotManager shareRobotManager].step3Block = ^{
        self.label.text = @"3";
    };
    
//    [[RobotManager shareRobotManager] robotStop];
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.label = [[UILabel alloc]initWithFrame:CGRectMake(200, 200, 50, 50)];
    [self.view addSubview:self.label];
    
}
- (IBAction)start:(id)sender {
    [[RobotManager shareRobotManager] robotStart];
}

- (void)removeAllStep{
    dispatch_async(dispatch_get_main_queue(), ^{
        [NSObject cancelPreviousPerformRequestsWithTarget:self];
    });
}

@end
