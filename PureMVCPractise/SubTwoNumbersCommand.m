//
//  SubTwoNumbersCommand.m
//  PureMVCPractise
//
//  Created by nimo on 8/24/16.
//  Copyright © 2016 nimo. All rights reserved.
//

#import "SubTwoNumbersCommand.h"
#import "ElementProxy.h"
#import "ApplicationFacade.h"
#import <UIKit/UIKit.h>

@implementation SubTwoNumbersCommand

- (void)execute:(id<INotification>)notification
{
    ElementProxy *elementProxy = (ElementProxy *)[facade retrieveProxy:[ElementProxy NAME]];
    NSNumber *numberA = [elementProxy getNumberA];
    NSNumber *numberB = [elementProxy getNumberB];
    CGFloat result = [numberA floatValue] - [numberB floatValue];
    [elementProxy setResult:@(result)];
    [facade sendNotification:ShowResult];
}

@end
