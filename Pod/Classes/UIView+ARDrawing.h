//
//  UIView+ARDrawing.h
//  Artsy
//
//  Created by Dustin Barker on 11/11/13.
//  Copyright (c) 2013 Artsy. All rights reserved.
//

@interface UIView (ARDrawing)

// DOTTED BORDERS
//   Using default border color
- (void)drawDottedBorders;
- (void)drawTopDottedBorder;
- (void)drawBottomDottedBorder;

//   Specifying a border color
- (void)drawDottedBordersWithColor:(UIColor *)color;
- (void)drawTopDottedBorderWithColor:(UIColor *)color;
- (void)drawBottomDottedBorderWithColor:(UIColor *)color;

// SOLID BORDERS
//   Using default border color
- (void)drawSolidBorders;
- (void)drawTopSolidBorder;
- (void)drawBottomSolidBorder;

//   Specifying a border color
- (void)drawSolidBordersWithColor:(UIColor *)color;
- (void)drawTopSolidBorderWithColor:(UIColor *)color;
- (void)drawBottomSolidBorderWithColor:(UIColor *)color;

@end
