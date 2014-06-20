//
//  UIColor+DebugColours.h
//  Artsy
//
//  Created by Orta Therox on 08/10/2012.
//  Copyright (c) 2012 Artsy. All rights reserved.
//

#import <UIKit/UIKit.h>

/// These are nicer shades of colours for debug work

@interface UIColor (DebugColours)

+ (UIColor *)debugColourRed;
+ (UIColor *)debugColourBlue;
+ (UIColor *)debugColourGreen;
+ (UIColor *)debugColourPurple;

/// Generates a random colour all that share the same saturation & lightness
+ (UIColor *)debugColourRandom;
@end
