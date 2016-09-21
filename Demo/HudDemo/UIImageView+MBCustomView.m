//
//  UIImageView+MBCustomView.m
//  HudDemo
//
//  Created by lovechocolate on 16/9/21.
//  Copyright © 2016年 Matej Bukovinski. All rights reserved.
//

#import "UIImageView+MBCustomView.h"

@implementation UIImageView (MBCustomView)

- (void)rotate360WithSelfz {
    CABasicAnimation* rotationAnimation;
    rotationAnimation = [CABasicAnimation animationWithKeyPath:@"transform.rotation.z"];
    rotationAnimation.toValue = [NSNumber numberWithFloat: M_PI * 2.0 ];
    rotationAnimation.duration = 1.0;
    rotationAnimation.cumulative = YES;
    rotationAnimation.repeatCount = MAXFLOAT;
    [self.layer addAnimation:rotationAnimation forKey:@"transform"];
}

- (void)rotate360WithSelfx {
    CABasicAnimation* rotationAnimation;
    rotationAnimation = [CABasicAnimation animationWithKeyPath:@"transform.rotation.z"];
    rotationAnimation.toValue = [NSNumber numberWithFloat:- M_PI * 2.0 ];
    rotationAnimation.duration = 1.0;
    rotationAnimation.cumulative = YES;
    rotationAnimation.repeatCount = MAXFLOAT;
    [self.layer addAnimation:rotationAnimation forKey:@"transform"];
}

@end
