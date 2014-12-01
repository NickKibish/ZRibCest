//
//  Recognizer.m
//  ZRibCest
//
//  Created by Nick Kibish on 28.11.14.
//  Copyright (c) 2014 Nick Kibish. All rights reserved.
//

#import "Recognizer.h"
#import "ZXMultiFormatWriter.h"
#import "ZXImage.h"

@implementation Recognizer

- (UIImage *)barCodeFromText:(NSString *)code
{
    NSError *error = nil;
    ZXMultiFormatWriter *writer = [ZXMultiFormatWriter writer];
    ZXBitMatrix* result = [writer encode:code
                                  format:kBarcodeFormatEan13
                                   width:500
                                  height:500
                                   error:&error];
    if (result) {
        CGImageRef image = [[ZXImage imageWithMatrix:result] cgimage];
        UIImage* uiImage = [[UIImage alloc] initWithCGImage:image];
        return uiImage;
        // This CGImageRef image can be placed in a UIImage, NSImage, or written to a file.
    } else {
        NSString *errorMessage = [error localizedDescription];
    }
    
    return nil;
}

@end
