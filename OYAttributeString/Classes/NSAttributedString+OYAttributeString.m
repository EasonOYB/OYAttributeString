//
//  NSAttributedString+OYAttributeString.m
//  OYAttributeString
//
//  Created by t11 on 2019/8/6.
//

#import "NSAttributedString+OYAttributeString.h"
#import "OYAttributeString.h"
#import <objc/runtime.h>

@implementation NSAttributedString (OYAttributeString)

- (OYAttributeString *)attributeString {
    OYAttributeString *typeface = objc_getAssociatedObject(self, _cmd);
    if (!typeface) {
        typeface = [[OYAttributeString alloc] init];
        objc_setAssociatedObject(self, _cmd, typeface, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    typeface.attributedString = [self copy];
    return typeface;
}

@end
