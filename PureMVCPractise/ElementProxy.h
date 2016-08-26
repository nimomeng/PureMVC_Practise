//
//  ElementProxy.h
//  PureMVCPractise
//
//  Created by nimo on 8/21/16.
//  Copyright © 2016 nimo. All rights reserved.
//

#import "Proxy.h"

@interface ElementProxy : Proxy

- (void)setNumberA:(NSNumber *)numberA andNumberB:(NSNumber *)numberB;
- (NSNumber *)getNumberA;
- (NSNumber *)getNumberB;

- (void)setResult:(NSNumber *)result;
- (NSNumber *)getResult;

- (BOOL)canOperate;

@end
