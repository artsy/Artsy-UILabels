//
//  ARLabelSubclasses.m
//  Artsy
//
//  Created by Orta Therox on 17/11/2012.
//  Copyright (c) 2012 Artsy. All rights reserved.
//

#import "ARLabelSubclasses.h"
#import "UIView+ARDrawing.h"
#import "NSNumberFormatter+ARCurrency.h"
#import <Artsy+UIColors/UIColor+ArtsyColors.h>

#if __has_include(<Artsy+UIFonts/UIFont+ArtsyFonts.h>)
#import <Artsy+UIFonts/UIFont+ArtsyFonts.h>
#endif

#if __has_include(<Artsy+OSSUIFonts/UIFont+OSSArtsyFonts.h>)
#import <Artsy+OSSUIFonts/UIFont+OSSArtsyFonts.h>
#endif

static const CGSize ChevronSize = { 8, 13 };

@interface ARLabelWithChevron ()
@property (readonly, nonatomic, strong) UIImageView *chevron;
@end

@implementation ARLabel

- (id)init
{
    return [self initWithFrame:CGRectZero];
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (!self) return nil;
    
    [self setup];
    
    return self;
}

- (void)awakeFromNib
{
    [self setup];
}

- (void)setup
{
    self.numberOfLines = 0;
    self.preferredMaxLayoutWidth = (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad) ? 728 : 280;
    self.backgroundColor = [UIColor whiteColor];
    self.opaque = YES;
}

@end


@implementation ARLabelWithChevron

- (void)setup
{
    [super setup];
    self.chevronDelta = 6;
    self.clipsToBounds = NO;
}

- (void)setText:(NSString *)text
{
    [super setText:text];

    if (!self.chevron) {
        NSString *path = [[NSBundle bundleForClass:self.class] pathForResource:@"Chevron_Gray" ofType:@"png"];
        UIImage *chevronImage = [UIImage imageWithContentsOfFile:path];
        UIImageView *chevron = [[UIImageView alloc] initWithImage:chevronImage];
        [self addSubview:chevron];
        _chevron = chevron;
    }
}

- (void)layoutSubviews
{
    [super layoutSubviews];

    CGFloat yPosition = (CGRectGetHeight(self.bounds) / 2) - self.chevronDelta;
    self.chevron.frame = CGRectMake(self.intrinsicContentSize.width + 8, yPosition, ChevronSize.width, ChevronSize.height);
}

- (void)setChevronHidden:(BOOL)chevronHidden
{
    self.chevron.hidden = chevronHidden;
}

- (BOOL)chevronHidden
{
    return self.chevron.hidden;
}

@end

@implementation ARSerifLabel

- (void)setup
{
    [super setup];
    self.font = [UIFont serifFontWithSize:self.font.pointSize];
}

@end

@implementation ARItalicsSerifLabel

- (void)setup
{
    [super setup];
    self.font = [UIFont serifItalicFontWithSize:self.font.pointSize];
}

@end

@implementation ARSansSerifLabel

- (void)setup
{
    [super setup];
    self.font = [UIFont sansSerifFontWithSize:self.font.pointSize];
}

- (void)setText:(NSString *)text
{
    [super setText:text.uppercaseString];
}

@end

@implementation ARItalicsSerifLabelWithChevron

- (void)setup
{
    [super setup];
    self.font = [UIFont serifItalicFontWithSize:self.font.pointSize];
}

@end

@interface ARSerifLineHeightLabel()

@end

@implementation ARSerifLineHeightLabel

- (instancetype)initWithLineSpacing:(CGFloat)lineHeight
{
    self = [super init];
    if (!self) { return nil; }

    _lineHeight = lineHeight;

    return self;
}

- (void)setText:(NSString *)text
{
    NSMutableAttributedString *attr = [[NSMutableAttributedString alloc] initWithString:text];
    NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
    [paragraphStyle setLineSpacing:self.lineHeight];
    [paragraphStyle setAlignment:self.textAlignment];

    [attr addAttribute:NSParagraphStyleAttributeName value:paragraphStyle range:NSMakeRange(0, [text length])];

    self.numberOfLines = 0;
    self.attributedText = attr;
}

@end

static const CGFloat ARBorderLabelInset = 10;

@implementation ARBorderLabel

- (id)init
{
    if ((self = [super initWithLineSpacing:4])) {
        self.lineBreakMode = NSLineBreakByWordWrapping;
    }
    return self;
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    [self drawSolidBordersWithColor:self.textColor];
}

- (void)drawTextInRect:(CGRect)rect
{
    UIEdgeInsets insets = {ARBorderLabelInset, 0, ARBorderLabelInset, 0};
    return [super drawTextInRect:UIEdgeInsetsInsetRect(rect, insets)];
}

- (CGSize)intrinsicContentSize
{
    CGSize size = [super intrinsicContentSize];
    return CGSizeMake(size.width, size.height + ARBorderLabelInset * 2);
}

@end

@implementation ARSerifLabelWithChevron

- (void)setup
{
    [super setup];
    self.font = [UIFont serifFontWithSize:self.font.pointSize];
}

@end

@implementation ARSansSerifLabelWithChevron

- (void)setup
{
    [super setup];
    self.font = [UIFont sansSerifFontWithSize:self.font.pointSize];
}

@end
