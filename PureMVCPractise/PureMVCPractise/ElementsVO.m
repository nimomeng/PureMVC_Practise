//
//  ElementsVO.m
//  PureMVCPractise
//
//  Created by nimo on 8/18/16.
//  Copyright © 2016 nimo. All rights reserved.
//

#import "ElementsVO.h"

@implementation ElementsVO
+ (ElementsVO *)initWithNumberA:(NSNumber *)numberA NumberB:(NSNumber *)numberB
{
    ElementsVO *elementVO = [[ElementsVO alloc] init];
    if (numberA) {
        elementVO.numberA = numberA;
    }
    if (numberB) {
        elementVO.numberB = numberB;
    }
    return elementVO;
}

- (void)changeWithNumberA:(NSNumber *)numberA NumberB:(NSNumber *)numberB
{
    if (numberA) {
        self.numberA = numberA;
    }
    if (numberB) {
        self.numberB = numberB;
    }
}

@end
