//
//  NSNumberFormatter+ARCurrency.m
//  Artsy
//
//  Created by Dustin Barker on 11/11/13.
//  Copyright (c) 2013 Artsy. All rights reserved.
//

#import "NSNumberFormatter+ARCurrency.h"

@implementation NSNumberFormatter (ARCurrency)

+ (NSString *)currencyStringForCents:(NSNumber *)centsNumber
{
    NSDecimalNumber *dollarsNumber = [NSDecimalNumber decimalNumberWithMantissa:centsNumber.intValue exponent:-2 isNegative:NO];
    return [self currencyStringForDollars:dollarsNumber];
}

+ (NSString *)currencyStringForDollars:(NSNumber *)dollarsNumber
{
    static NSNumberFormatter *formatter;
    if (!formatter) {
        formatter = [[NSNumberFormatter alloc] init];
        [formatter setNumberStyle:NSNumberFormatterCurrencyStyle];
        [formatter setMaximumFractionDigits:0];
        [formatter setAlwaysShowsDecimalSeparator:NO];
    }

    return [formatter stringFromNumber:dollarsNumber];
}

@end
