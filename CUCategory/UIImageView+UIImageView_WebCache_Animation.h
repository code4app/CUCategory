//
//  UIImageView+UIImageView_WebCache_Animation.h
//  TestFramework
//
//  Created by curer on 8/15/13.
//  Copyright (c) 2013 curer. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImageView (UIImageView_WebCache_Animation)

- (void)setImageWithString:(NSString *)urlString
          placeholderImage:(UIImage *)placeholder;

@end
