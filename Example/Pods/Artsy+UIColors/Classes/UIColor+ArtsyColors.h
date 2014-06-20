//
//  UIColor+ArtsyColors.h
//  Artsy
//
//  Created by Leonard Grey on 11/27/12.
//  Copyright (c) 2012 Artsy. All rights reserved.
//

@interface UIColor (ArtsyColors)

/// rules, button borders
+ (UIColor *)artsyLightGrey;

/// carrets and deselected UI elements
+ (UIColor *)artsyMediumGrey;

/// type under works
+ (UIColor *)artsyHeavyGrey;

/// standard Artsy logotype purple
+ (UIColor *)artsyPurple;

+ (UIColor *)artsyPurpleWithAlpha:(CGFloat)alpha;

/// standard error color
+ (UIColor *)artsyRed;

/// communication to user
+ (UIColor *)artsyAttention;

@end
