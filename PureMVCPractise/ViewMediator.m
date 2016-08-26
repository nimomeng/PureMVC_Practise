//
//  ViewMediator.m
//  PureMVCPractise
//
//  Created by nimo on 8/16/16.
//  Copyright © 2016 nimo. All rights reserved.
//

#import "ViewMediator.h"
#import "ApplicationFacade.h"
#import "ViewController.h"
#import "ElementProxy.h"

@implementation ViewMediator

- (ViewController *)viewComponent
{
    return viewComponent;
}

- (void)addNumberA:(CGFloat)numberA andNumberB:(CGFloat)numberB
{
    ElementProxy *elementProxy = (ElementProxy *)[facade retrieveProxy:[ElementProxy NAME]];
    [elementProxy setNumberA:@(numberA) andNumberB:@(numberB)];
    [self sendNotification:AddTwoNumbers];
}

- (void)subNumberA:(CGFloat)numberA toNumberB:(CGFloat)numberB
{
    ElementProxy *elementProxy = (ElementProxy *)[facade retrieveProxy:[ElementProxy NAME]];
    [elementProxy setNumberA:@(numberA) andNumberB:@(numberB)];
    [self sendNotification:SubTwoNumbers];
    
}

- (void)onRegister
{
    [self.viewComponent setDelegate:self];
}

- (NSArray *)listNotificationInterests
{
    return [NSArray arrayWithObjects:ShowResult, nil];
}

- (void)handleNotification:(id<INotification>)notification
{
    NSString *notificationName = [notification name];
    if ([notificationName isEqualToString:ShowResult]) {
        ElementProxy *elementProxy = (ElementProxy *)[facade retrieveProxy:[ElementProxy NAME]];
        NSNumber *result = [elementProxy getResult];
        [self.viewComponent showResult:[result floatValue]];
    }
}

@end
