//
//  RobotManager.m
//  PerformDemo
//
//  Created by cendi on 2019/6/22.
//  Copyright © 2019 cendi. All rights reserved.
//

#import "RobotManager.h"

static RobotManager *robotManager = nil;

@implementation RobotManager
+ (RobotManager *)shareRobotManager {
    @synchronized(self) {
        if (!robotManager) {
            robotManager = [[RobotManager alloc] init];
        }
        return robotManager;
    }
}

- (void)robotStart{
    [self performSelector:@selector(step1) withObject:self];
}

- (void)step1{
    NSLog(@"step1");
    self.step1Block();
    [self performSelector:@selector(step2) withObject:@"step1" afterDelay:1.0f];
}

- (void)step2{
    NSLog(@"step2");
    self.step2Block();
    [self performSelector:@selector(step3) withObject:@"step2" afterDelay:1.0f];
}

- (void)step3{
    NSLog(@"step3");
    self.step3Block();
    [self performSelector:@selector(step1) withObject:@"step3" afterDelay:1.0f];
}

- (void)robotStop{
    dispatch_async(dispatch_get_main_queue(), ^{
        [NSObject cancelPreviousPerformRequestsWithTarget:self];
    });
}

@end
