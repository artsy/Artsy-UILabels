//
//  NSNumberFormatter+ARCurrency.h
//  Artsy
//
//  Created by Dustin Barker on 11/11/13.
//  Copyright (c) 2013 Artsy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSNumberFormatter (ARCurrency)

// Convenience methods that use the current locale.
+ (NSString *)currencyStringForDollarCents:(NSNumber *)cents;
+ (NSString *)currencyStringForDollars:(NSNumber *)dollars;

/// Returns number formatters that respect the specified locale but always uses dollars.
+ (NSNumberFormatter *)dollarsFormatterWithCurrentLocale;
+ (NSNumberFormatter *)dollarsFormatterWithLocale:(NSLocale *)locale;

/// Divides a number by 100 without loosing precision.
- (NSString *)stringFromCentsNumber:(NSNumber *)cents;

+ (NSString *)currencyStringForCents:(NSNumber *)cents __attribute__((deprecated("Replaced by +[NSNumberFormatter currencyStringForDollarCents:]")));

@end
