//
//  ViewController.h
//  ZRibCest
//
//  Created by Nick Kibish on 28.11.14.
//  Copyright (c) 2014 Nick Kibish. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ZBarSDK.h"

@interface ViewController : UIViewController <ZBarReaderDelegate, ZBarReaderViewDelegate, UIImagePickerControllerDelegate>
- (IBAction)show:(id)sender;
@property (strong, nonatomic) ZBarReaderViewController *reader;
@property (strong, nonatomic) IBOutlet UIImageView *barCodeImage;

@end

