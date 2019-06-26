//
//  RobotManager.h
//  PerformDemo
//
//  Created by cendi on 2019/6/22.
//  Copyright © 2019 cendi. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface RobotManager : NSObject
{
    
}
///
@property (nonatomic,copy)void (^step1Block)(void);
///
@property (nonatomic,copy)void (^step2Block)(void);
///
@property (nonatomic,copy)void (^step3Block)(void);


+(RobotManager *)shareRobotManager;

- (void)robotStart;
- (void)robotStop;

@end

NS_ASSUME_NONNULL_END
