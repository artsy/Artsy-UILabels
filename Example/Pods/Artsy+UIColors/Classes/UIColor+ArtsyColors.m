//
//  UIColor+ArtsyColors.m
//  Artsy
//
//  Created by Leonard Grey on 11/27/12.
//  Copyright (c) 2012 Artsy. All rights reserved.
//

// For references on names see
// https://github.com/artsy/DesignWiki/wiki/Design-styleguide

#import <EDColor/EDColor.h>

@implementation UIColor (ArtsyColors)

+ (UIColor *)artsyLightGrey
{
    return [UIColor colorWithHex:0xe5e5e5];
}

+ (UIColor *)artsyMediumGrey
{
    return [UIColor colorWithHex:0xcccccc];
}

+ (UIColor *)artsyHeavyGrey
{
    return [UIColor colorWithHex:0x888888];
}

+ (UIColor *)artsyPurple
{
    return [UIColor colorWithHex:0x6a0bc1];
}

+ (UIColor *)artsyPurpleWithAlpha:(CGFloat)alpha
{
    return [UIColor colorWithHex:0x6a0bc1 andAlpha:alpha];
}

+ (UIColor *)artsyRed;
{
    return [UIColor colorWithHex:0xc73030];
}

+ (UIColor *)artsyAttention
{
    return [UIColor colorWithHex:0xffffd7];
}

@end

