//
//  ViewController.h
//  PureMVCPractise
//
//  Created by nimo on 8/14/16.
//  Copyright © 2016 nimo. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol ViewControllerDelegate <NSObject>
- (void)addNumberA:(CGFloat)numberA andNumberB:(CGFloat)numberB;
- (void)subNumberA:(CGFloat)numberA toNumberB:(CGFloat)numberB;
@end

@interface ViewController : UIViewController
@property(nonatomic,weak) id<ViewControllerDelegate> delegate;
- (void)showResult:(CGFloat)result;
@end

