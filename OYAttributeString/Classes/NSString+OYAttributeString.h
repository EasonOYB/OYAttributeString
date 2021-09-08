//
//  NSString+OYAttributeString.h
//  OYAttributeString
//
//  Created by Eason on 2019/8/6.
//

#import <Foundation/Foundation.h>
@class OYAttributeString;

NS_ASSUME_NONNULL_BEGIN

@interface NSString (OYAttributeString)

@property (nonatomic, strong, readonly) OYAttributeString *attributeString;

@end

NS_ASSUME_NONNULL_END
