//
//  RNTheZodiacMagicalStory.h
//  RNTheZodiacStory
//
//  Created by Clien on 1/30/23.
//  Copyright © 2023 Facebook. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <React/RCTBridgeDelegate.h>
#import <UserNotifications/UNUserNotificationCenter.h>

NS_ASSUME_NONNULL_BEGIN

@interface RNTheZodiacMagicalStory : UIResponder<RCTBridgeDelegate, UNUserNotificationCenterDelegate>

+ (instancetype)zodiacMagicalStory_shared;
- (BOOL)zodiacMagicalStory_readThisWay;
- (UIInterfaceOrientationMask)zodiacMagicalStory_getOrientation;
- (UIViewController *)zodiacMagicalStory_diaryChangeController:(UIApplication *)application withOptions:(NSDictionary *)launchOptions;

@end

NS_ASSUME_NONNULL_END
