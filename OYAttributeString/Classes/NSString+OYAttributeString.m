//
//  NSString+OYAttributeString.m
//  OYAttributeString
//
//  Created by Eason on 2019/8/6.
//

#import "NSString+OYAttributeString.h"
#import "OYAttributeString.h"
#import <objc/runtime.h>

@implementation NSString (OYAttributeString)

- (OYAttributeString *)attributeString {
    OYAttributeString *typeface = objc_getAssociatedObject(self, _cmd);
    if (!typeface) {
        typeface = [[OYAttributeString alloc] init];
        objc_setAssociatedObject(self, _cmd, typeface, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    typeface.string = [self copy];
    return typeface;
}

@end
