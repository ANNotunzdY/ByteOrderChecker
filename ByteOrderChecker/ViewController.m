//
//  ViewController.m
//  ByteOrderChecker
//
//  Created by ANNotunzdY on 2015/12/01.
//  Copyright © 2015年 Kibousoft LLC. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    CFByteOrder byteOrder = CFByteOrderGetCurrent();
    
    switch (byteOrder) {
        case CFByteOrderUnknown:
            self.byteOrderLabel.text = @"CFByteOrderUnknown";
            break;
        case CFByteOrderLittleEndian:
            self.byteOrderLabel.text = @"CFByteOrderLittleEndian";
            break;
        case CFByteOrderBigEndian:
            self.byteOrderLabel.text = @"CFByteOrderBigEndian";
            break;
        default:
            break;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
