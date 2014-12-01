//
//  ViewController.m
//  ZRibCest
//
//  Created by Nick Kibish on 28.11.14.
//  Copyright (c) 2014 Nick Kibish. All rights reserved.
//

#import "ViewController.h"
#import "Recognizer.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"viow did load");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Delegate
- (void)readerView:(ZBarReaderView *)readerView
    didReadSymbols:(ZBarSymbolSet *)symbols
         fromImage:(UIImage *)image
{
    for(ZBarSymbol *sym in symbols) {
        NSString *str = sym.data;
        Recognizer *rec = [[Recognizer alloc] init];
        UIImage *image = [rec barCodeFromText:str];
        self.barCodeImage.image = image;
        break;
    }
    [_reader dismissViewControllerAnimated:YES completion:nil];
}

- (void) imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info
{
//    [picker dismissViewControllerAnimated:YES completion:nil];
}

#pragma mark - ZBar
- (IBAction)show:(id)sender
{
    [self presentViewController:[self reader]
                       animated:YES
                     completion:^{
                         NSLog(@"camera");
                     }];
}

- (ZBarReaderViewController *)reader
{
    if (!_reader) { 
        _reader = [ZBarReaderViewController new];
        _reader.readerDelegate = self;
        _reader.readerView.readerDelegate = self;
    }
    return _reader;
}



@end
