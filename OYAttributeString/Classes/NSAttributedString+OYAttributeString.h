//
//  NSAttributedString+OYAttributeString.h
//  OYAttributeString
//
//  Created by t11 on 2019/8/6.
//

#import <Foundation/Foundation.h>
@class OYAttributeString;

NS_ASSUME_NONNULL_BEGIN

@interface NSAttributedString (OYAttributeString)

@property (nonatomic, strong, readonly) OYAttributeString *attributeString;

@end

NS_ASSUME_NONNULL_END
