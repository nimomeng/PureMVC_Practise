//
//  ElementProxy.m
//  PureMVCPractise
//
//  Created by nimo on 8/21/16.
//  Copyright © 2016 nimo. All rights reserved.
//

#import "ElementProxy.h"
#import "ElementsVO.h"

@implementation ElementProxy

- (void)setNumberA:(NSNumber *)numberA andNumberB:(NSNumber *)numberB
{
    ElementsVO *eVO = [ElementsVO initWithNumberA:numberA NumberB:numberB];
    self.data = eVO;
}

- (BOOL)canOperate
{
    ElementsVO *eVO = self.data;
    if (eVO.numberA && eVO.numberB) {
        return YES;
    }
    return NO;
}

- (NSNumber *)getNumberA
{
    ElementsVO *eVO = self.data;
    return eVO.numberA;
}

- (NSNumber *)getNumberB
{
    ElementsVO *eVO = self.data;
    return eVO.numberB;
}

- (void)setResult:(NSNumber *)result
{
    ElementsVO *eVO = self.data;
    eVO.result = result;
}

- (NSNumber *)getResult
{
    ElementsVO *eVO = self.data;
    return eVO.result;
}

+ (NSString *)NAME
{
    return @"ElementProxy";
}

@end
