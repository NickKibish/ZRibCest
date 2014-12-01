//
//  AppDelegate.h
//  ZRibCest
//
//  Created by Nick Kibish on 28.11.14.
//  Copyright (c) 2014 Nick Kibish. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ZBarSDK.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate,   ZBarReaderDelegate>

@property (strong, nonatomic) UIWindow *window;

@end

