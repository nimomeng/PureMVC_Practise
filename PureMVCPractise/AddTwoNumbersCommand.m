//
//  AddTwoNumbersCommand.m
//  PureMVCPractise
//
//  Created by nimo on 8/18/16.
//  Copyright © 2016 nimo. All rights reserved.
//

#import "AddTwoNumbersCommand.h"
#import "ApplicationFacade.h"
#import "ElementProxy.h"
#import <UIKit/UIKit.h>

@implementation AddTwoNumbersCommand

- (void)execute:(id<INotification>)notification
{
    ElementProxy *elmentProxy = (ElementProxy *)[facade retrieveProxy:[ElementProxy NAME]];
    NSNumber *numberA = elmentProxy.getNumberA;
    NSNumber *numberB = elmentProxy.getNumberB;
    
    NSNumber *result = [NSNumber numberWithFloat:([numberA floatValue]+ [numberB floatValue])];
    [elmentProxy setResult:result];
    [facade sendNotification:ShowResult];
}

@end
