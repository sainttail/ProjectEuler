//
//  Problem3.m
//  ProjectEulor
//
//  Created by Eakawat Tantamjarik on 12/13/2557 BE.
//  Copyright (c) 2557 Codium. All rights reserved.
//

/*The prime factors of 13195 are 5, 7, 13 and 29.
 
 What is the largest prime factor of the number 600851475143 ?*/

#import "Problem3.h"

@implementation Problem3

- (id)answer
{
    long long number = 600851475143;
    long long max = 0;
    for (long long i = 2; i < sqrt(number); i++) {
        if (number % i == 0 && [self isPrimeNumber:i] && max < i) {
            max = i;
        }
    }
    return @(max);
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
