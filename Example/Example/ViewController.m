//
//  ViewController.m
//  Example
//
//  Created by curer on 8/15/13.
//  Copyright (c) 2013 curer. All rights reserved.
//

#import "ViewController.h"
#import "UIImageView+UIImageView_WebCache_Animation.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    NSString *imageURLString = @"http://img.hb.aicdn.com/56cca6a753c78b5c82862a4a624fbe274dbc5a7ef399-XfrYTE_fw580";
    
    [self.imageView setImageWithString:imageURLString
                      placeholderImage:nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
