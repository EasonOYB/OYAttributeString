//
//  UIImage+OYAttributeString.m
//  OYAttributeString
//
//  Created by Eason on 2019/8/2.
//

#import "UIImage+OYAttributeString.h"

@implementation UIImage (OYAttributeString)

+ (instancetype)imageWithColor:(UIColor *)color size:(CGSize)size {
    UIGraphicsBeginImageContextWithOptions(size, NO, 0.0);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, color.CGColor);
    CGContextFillRect(context, CGRectMake(0.0, 0.0, size.width, size.height));
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}

- (NSAttributedString *)attributedString {
    NSTextAttachment *attachment = self.attachment;
    return [NSAttributedString attributedStringWithAttachment:attachment].copy;
}

- (NSTextAttachment *)attachment {
    NSTextAttachment *attachment = [[NSTextAttachment alloc] init];
    attachment.image = self;
    attachment.bounds = CGRectMake(0.0, 0.0, self.size.width, self.size.height);
    return attachment;
}

@end
