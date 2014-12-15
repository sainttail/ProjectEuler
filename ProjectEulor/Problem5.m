//
//  Problem5.m
//  ProjectEulor
//
//  Created by Eakawat Tantamjarik on 12/13/2557 BE.
//  Copyright (c) 2557 Codium. All rights reserved.
//

#import "Problem5.h"

/*2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?*/

@implementation Problem5

- (id)answer
{
    int i = 1;
    while (![self number:i allDivisibleUpto:20]) {
        i++;
    }
    return @(i);
}

- (BOOL)number:(int)value allDivisibleUpto:(int)number
{
    for (int i = 1; i <= number; i++) {
        if (value % i != 0) {
            return NO;
        }
    }
    return YES;
}

@end
