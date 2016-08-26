//
//  ApplicationFacade.h
//  PureMVCPractise
//
//  Created by nimo on 8/15/16.
//  Copyright © 2016 nimo. All rights reserved.
//

#import "Facade.h"

extern NSString *StartUp;
extern NSString *AddTwoNumbers;
extern NSString *ShowResult;

@interface ApplicationFacade : Facade

+(instancetype)sharedInstance;

- (void)startup:(id)app;
@end
