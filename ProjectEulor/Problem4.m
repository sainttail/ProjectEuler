//
//  Problem4.m
//  ProjectEulor
//
//  Created by Eakawat Tantamjarik on 12/13/2557 BE.
//  Copyright (c) 2557 Codium. All rights reserved.
//

#import "Problem4.h"

/*The sum of the squares of the first ten natural numbers is,

1^2 + 2^2 + ... + 10^2 = 385
The square of the sum of the first ten natural numbers is,

(1 + 2 + ... + 10)^2 = 55^2 = 3025
Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.

Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.*/

@implementation Problem4

- (id)answer
{
    int sum1 = 0;
    int sum2 = 0;
    for (int i = 1; i <= 100; i++) {
        sum1 += pow(i, 2);
        sum2 += i;
    }
    return @(abs(sum1 - pow(sum2, 2)));
}

@end
