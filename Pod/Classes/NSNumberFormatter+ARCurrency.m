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
    NSDecimal cents = [centsNumber decimalValue];
    NSDecimal cent = [@(100) decimalValue];
    NSDecimal dollars;
    NSDecimalDivide(&dollars, &cents, &cent, NSRoundBankers);

    static NSNumberFormatter *formatter;
    if (!formatter) {
        formatter = [[NSNumberFormatter alloc] init];
        [formatter setNumberStyle:NSNumberFormatterCurrencyStyle];
    }

    NSString *currencyString = [formatter stringFromNumber:[NSDecimalNumber decimalNumberWithDecimal:dollars]];
    return [currencyString substringToIndex:[currencyString length] - 3];
}

@end
