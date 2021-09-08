//
//  UIView+OYAttributeString.m
//  OYAttributeString
//
//  Created by Eason on 2019/8/6.
//

#import "UIView+OYAttributeString.h"

@implementation UIView (OYAttributeString)

- (UIImage *)screenSnapshot {
    UIGraphicsBeginImageContextWithOptions(self.bounds.size, NO, 0.0);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, [UIColor clearColor].CGColor);
    [self.layer renderInContext:context];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}

@end
