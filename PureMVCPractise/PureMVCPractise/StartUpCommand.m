//
//  StartUpCommand.m
//  PureMVCPractise
//
//  Created by nimo on 8/15/16.
//  Copyright © 2016 nimo. All rights reserved.
//

#import "StartUpCommand.h"
#import <UIKit/UIKit.h>
#import "ViewController.h"
#import "ViewMediator.h"
#import "ElementProxy.h"

@implementation StartUpCommand

- (void)execute:(id<INotification>)notification
{
    UIWindow *appWindow = [notification body];
    
    ViewController *viewController = [[ViewController alloc] init];
    appWindow.rootViewController = viewController;
    appWindow.backgroundColor = [UIColor whiteColor];
    
    [appWindow makeKeyAndVisible];
    
//    register mediators
    [facade registerMediator:[ViewMediator withViewComponent:viewController]];
    
//    register proxys
    [facade registerProxy:[ElementProxy proxy]];
}

@end
