//
//  Problem6.m
//  ProjectEulor
//
//  Created by Eakawat Tantamjarik on 12/13/2557 BE.
//  Copyright (c) 2557 Codium. All rights reserved.
//

#import "Problem6.h"

/*A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

Find the largest palindrome made from the product of two 3-digit numbers.*/

@implementation Problem6

- (id)answer
{
    return @([self largestPalindromeFromProductOfDigitNumber:3]);
}

- (int)largestPalindromeFromProductOfDigitNumber:(int)digit
{
    int max = 0;
    for (int i = pow(10, digit) - 1; i >= pow(10, digit - 1) ; i--) {
        for (int j = i; j >= pow(10, digit - 1); j--) {
            int product = j * i;
            if ([self checkPalindromeNumber:product] && max < product) {
                max = product;
            }
        }
    }
    return max;
}

- (BOOL)checkPalindromeNumber:(int)number
{
    NSString *numberStr = [NSString stringWithFormat:@"%d", number];
    
    if (numberStr.length % 2 != 0) {
        numberStr = [numberStr substringWithRange:NSMakeRange(numberStr.length / 2, 1)];
    }
    
    for (int i = 0; i < numberStr.length / 2; i++) {
        if ([numberStr characterAtIndex:i] != [numberStr characterAtIndex:numberStr.length - i - 1]) {
            return NO;
        }
    }
    return YES;
}

@end
