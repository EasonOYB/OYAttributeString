//
//  OYViewController.m
//  OYAttributeString
//
//  Created by EasonOYB on 07/30/2019.
//  Copyright (c) 2019 EasonOYB. All rights reserved.
//

#import "OYViewController.h"
#import <OYAttributeString/OYAttributeString.h>

@interface OYViewController ()

@property (nonatomic, strong) UILabel *label;
@property (nonatomic, strong) UILabel *multiLineLabel;
@property (nonatomic, strong) UILabel *spacingLabel;
@property (nonatomic, strong) UILabel *emojiLabel;
@property (nonatomic, strong) UIView *circle;
@property (nonatomic, strong) UIButton *button;

@end

@implementation OYViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

#pragma mark - setter & getter

- (UILabel *)label {
    if (!_label) {
        _label = [[UILabel alloc] init];
        _label.font = [UIFont systemFontOfSize:14.0];
    }
    return _label;
}

- (UILabel *)emojiLabel {
    if (!_emojiLabel) {
        _emojiLabel = [[UILabel alloc] init];
    }
    return _emojiLabel;
}

- (UILabel *)spacingLabel {
    if (!_spacingLabel) {
        _spacingLabel = [[UILabel alloc] init];
    }
    return _spacingLabel;
}

- (UILabel *)multiLineLabel {
    if (!_multiLineLabel) {
        _multiLineLabel = [[UILabel alloc] init];
        _multiLineLabel.numberOfLines = 3;
        _multiLineLabel.preferredMaxLayoutWidth = [UIScreen mainScreen].bounds.size.width - 16.0 * 2;
    }
    return _multiLineLabel;
}

- (UIView *)circle {
    if (!_circle) {
        _circle = [[UIView alloc] init];
        _circle.frame = CGRectMake(0.0, 0.0, 6.0, 6.0);
        _circle.layer.cornerRadius = 3.0;
        _circle.layer.masksToBounds = YES;
    }
    return _circle;
}

- (UIButton *)button {
    if (!_button) {
        _button = [UIButton buttonWithType:UIButtonTypeCustom];
        _button.titleLabel.numberOfLines = 2;
        NSAttributedString *emoji = [UIImage imageNamed:@"emoji"].attributedString;
        NSAttributedString *text = @"\nemoji".attributeString.font([UIFont boldSystemFontOfSize:16.0]).color([UIColor blackColor]).compose;
        text = OYAttributedString(emoji, text).attributeString.alignment(NSTextAlignmentCenter).lineHeight(22.0).compose;
        [_button setAttributedTitle:text forState:UIControlStateNormal];
    }
    return _button;
}

@end
