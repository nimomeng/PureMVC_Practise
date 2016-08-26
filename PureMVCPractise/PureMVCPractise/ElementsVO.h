//
//  ElementsVO.h
//  PureMVCPractise
//
//  Created by nimo on 8/18/16.
//  Copyright © 2016 nimo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ElementsVO : NSObject
@property(nonatomic, strong)NSNumber *numberA;
@property(nonatomic, strong)NSNumber *numberB;
@property(nonatomic, strong)NSNumber *result;
+ (ElementsVO *)initWithNumberA:(NSNumber *)numberA NumberB:(NSNumber *)numberB;
- (void)changeWithNumberA:(NSNumber *)numberA NumberB:(NSNumber *)numberB;
@end
