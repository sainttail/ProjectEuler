//
//  Problem10.m
//  ProjectEulor
//
//  Created by Eakawat Tantamjarik on 12/15/2557 BE.
//  Copyright (c) 2557 Codium. All rights reserved.
//

#import "Problem10.h"

/*The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

Find the sum of all the primes below two million.*/

@implementation Problem10

- (id)answer
{
    long long sum = 0;
    for (int i = 2; i < 2000000; i++) {
        if ([self isPrimeNumber:i]) {
            sum += i;
        }
    }
    
    return @(sum);
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
