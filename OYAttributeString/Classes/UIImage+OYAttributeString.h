//
//  UIImage+OYAttributeString.h
//  OYAttributeString
//
//  Created by Eason on 2019/8/2.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (OYAttributeString)

+ (instancetype)imageWithColor:(UIColor *)color size:(CGSize)size;

- (NSAttributedString *)attributedString;

- (NSTextAttachment *)attachment;

@end

NS_ASSUME_NONNULL_END
