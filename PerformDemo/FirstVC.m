//
//  FirstVC.m
//  PerformDemo
//
//  Created by cendi on 2019/6/21.
//  Copyright © 2019 cendi. All rights reserved.
//

#import "FirstVC.h"
#import "SecondVC.h"

@interface FirstVC ()

@end

@implementation FirstVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (IBAction)back:(id)sender {
    SecondVC * a = [SecondVC new];
    [self.navigationController pushViewController:a animated:YES];
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
