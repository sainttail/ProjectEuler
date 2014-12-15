//
//  Problem1.m
//  ProjectEulor
//
//  Created by Eakawat Tantamjarik on 12/13/2557 BE.
//  Copyright (c) 2557 Codium. All rights reserved.
//

#import "Problem1.h"

/*If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

Find the sum of all the multiples of 3 or 5 below 1000.*/

@implementation Problem1

- (id)answer
{
    int sum = 0;
    for (int i = 1; i < 1000; i++) {
        if (i % 3 == 0 || i % 5 == 0) {
            sum += i;
        }
    }
    return @(sum);
}

@end
