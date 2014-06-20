//
//  UIView+ARDrawing.h
//  Artsy
//
//  Created by Dustin Barker on 11/11/13.
//  Copyright (c) 2013 Artsy. All rights reserved.
//

@interface UIView (ARDrawing)

- (void)drawTopDottedBorder;

- (void)drawBottomDottedBorder;

- (void)drawDottedBorders;

- (void)drawSolidBordersWithColor:(UIColor *)color;
@end
