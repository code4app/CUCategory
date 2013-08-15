//
//  UIImageView+UIImageView_WebCache_Animation.m
//  TestFramework
//
//  Created by curer on 8/15/13.
//  Copyright (c) 2013 curer. All rights reserved.
//

#import "UIImageView+UIImageView_WebCache_Animation.h"
#import "UIImageView+WebCache.h"

@implementation UIImageView (UIImageView_WebCache_Animation)

- (void)setImageWithString:(NSString *)urlString
          placeholderImage:(UIImage *)placeholder
{
    __weak UIImageView *wself = self;
    
    NSURL *url = [NSURL URLWithString:urlString];
    [self setImageWithURL:url
                   placeholderImage:placeholder
                          completed:^(UIImage *image, NSError *error, SDImageCacheType cacheType) {
                              if (image && cacheType == SDImageCacheTypeNone) {
                                  wself.alpha = 0.0f;
                                  [UIView animateWithDuration:.4f
                                                   animations:^{
                                                       wself.alpha = 1.0f;
                                                   }];
                              }
                          }];
}

@end
