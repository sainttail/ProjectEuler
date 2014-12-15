//
//  Problem7.m
//  ProjectEulor
//
//  Created by Eakawat Tantamjarik on 12/13/2557 BE.
//  Copyright (c) 2557 Codium. All rights reserved.
//

#import "Problem7.h"

/*By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

What is the 10 001st prime number?*/

@implementation Problem7

- (id)answer
{
    int target = 10001;
    int count = 0;
    int i = 1;
    while (count != target) {
        i++;
        if ([self isPrimeNumber:i]) {
            count++;
        }
    }
    return @(i);
}

- (BOOL)isPrimeNumber:(long long)number
{
    for (long i = 2; i <= sqrt(number); i++) {
        if (number % i == 0) {
            return NO;
        }
    }
    return YES;
}

@end
