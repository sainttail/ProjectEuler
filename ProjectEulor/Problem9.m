//
//  Problem9.m
//  ProjectEulor
//
//  Created by Eakawat Tantamjarik on 12/15/2557 BE.
//  Copyright (c) 2557 Codium. All rights reserved.
//

#import "Problem9.h"

/*A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,

a^2 + b^2 = c^2
For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.

There exists exactly one Pythagorean triplet for which a + b + c = 1000.
Find the product abc.*/

@implementation Problem9

- (id)answer
{
    return @([self findTriplet]);
}

- (int)findTriplet
{
    for (int i = 1; i < 500; i++) {
        for (int j = 1; j < 500; j++) {
            int c = 1000 - i - j;
            if (c < 0) {
                break;
            } else if([self checkPythagoreanForA:i b:j c:c]){
                return i * j * c;
            }
        }
    }
    return 0;
}

- (BOOL)checkPythagoreanForA:(int)a b:(int)b c:(int)c
{
    return pow(a, 2) + pow(b, 2) == pow(c, 2);
}

@end
