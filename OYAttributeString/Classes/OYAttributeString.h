//
//  OYAttributeString.h
//  OYAttributeString
//
//  Created by Eason on 2019/8/6.
//

#import <Foundation/Foundation.h>
#import "NSString+OYAttributeString.h"
#import "UIImage+OYAttributeString.h"
#import "UIView+OYAttributeString.h"
#import "NSAttributedString+OYAttributeString.h"

//#define metamacro_concat_(A, B) A ## B
//
//
//#define metamacro_concat(A, B) \
//metamacro_concat_(A, B)
//
//#define metamacro_at(N, ...) \
//metamacro_concat(metamacro_at, N)(__VA_ARGS__)
//
//#define metamacro_argcount(...) \
//metamacro_at(20, __VA_ARGS__, 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1)

#define OYAttributedString(...) _OYAttributedString(metamacro_argcount(__VA_ARGS__), __VA_ARGS__)

NSAttributedString * _Nonnull _OYAttributedString(int size,...);

NS_ASSUME_NONNULL_BEGIN

@interface OYAttributeString : NSObject


@property (nonatomic, copy) NSString *string;
@property (nonatomic, copy) NSAttributedString *attributedString;


/**
 NSFontAttributeName
 */
- (OYAttributeString *(^)(CGFloat fontSize))normal;
- (OYAttributeString *(^)(CGFloat fontSize))bold;
- (OYAttributeString *(^)(UIFont *font))font;


/**
 NSForegroundColorAttributeName
 */
- (OYAttributeString *(^)(UIColor *color))color;
- (OYAttributeString *(^)(CGFloat red, CGFloat green, CGFloat blue))rgb;
- (OYAttributeString *(^)(NSUInteger hex))hex;


/**
 NSBackgroundColorAttributeName
 */
- (OYAttributeString *(^)(UIColor *color))background;

/**
 NSBaselineOffsetAttributeName
 offset > 0 move up, offset < 0 move down
 */
- (OYAttributeString *(^)(CGFloat offset))offset;

/**
 NSParagraphStyleAttributeName
 lineSpace of string
 */
- (OYAttributeString *(^)(CGFloat lineSpacing))lineSpacing;

/**
 NSParagraphStyleAttributeName
 alignment of string
 */
- (OYAttributeString *(^)(NSTextAlignment alignment))alignment;

/**
 NSParagraphStyleAttributeName
 lineBreakMode of string
 */
- (OYAttributeString *(^)(NSLineBreakMode lineBreakMode))lineBreakMode;

/**
 NSParagraphStyleAttributeName
 lineHeight of string
 */
- (OYAttributeString *(^)(CGFloat lineHeight))lineHeight;

/**
 NSParagraphStyleAttributeName
 first line head indent of string
 */
- (OYAttributeString *(^)(CGFloat indent))firstLineHeadIndent;

/**
 NSKernAttributeName
 spacing between letters
 */
- (OYAttributeString *(^)(CGFloat spacing))kern;


/**
 add all attributes on the chain to the string
 
 @return return string with attributes on the chain
 */
- (OYAttributeString *)compose;


/**
 single line text size
 
 @return size of text in single line
 */
- (CGSize)size;


/**
 multiple line text size, only support NSLineBreakByWordWrapping or NSLineBreakByCharWrapping line break mode
 
 size  preferd size that text should fit
 @return size that text fits
 */
- (CGSize (^)(CGSize size))sizeThatFits;


/**
 generate NSAttributedString object with certain spacing
 */
- (NSAttributedString *(^)(CGFloat spacing))spacing;

@end

NS_ASSUME_NONNULL_END
