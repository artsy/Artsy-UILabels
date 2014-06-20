//
//  NSNumberFormatter+ARCurrency.h
//  Artsy
//
//  Created by Dustin Barker on 11/11/13.
//  Copyright (c) 2013 Artsy. All rights reserved.
//

@interface NSNumberFormatter (ARCurrency)

+ (NSString *)currencyStringForCents:(NSNumber *)cents;

@end
