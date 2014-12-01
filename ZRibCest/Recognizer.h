//
//  Recognizer.h
//  ZRibCest
//
//  Created by Nick Kibish on 28.11.14.
//  Copyright (c) 2014 Nick Kibish. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Recognizer : NSObject

- (UIImage *) barCodeFromText:(NSString *)code;

@end
