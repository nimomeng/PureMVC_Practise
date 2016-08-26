//
//  ViewController.m
//  PureMVCPractise
//
//  Created by nimo on 8/14/16.
//  Copyright © 2016 nimo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property(nonatomic,assign)CGFloat numberA, numberB;
@property(nonatomic,retain)UIButton *calculateBtn;
@property(nonatomic,retain)UILabel *resultLabel;
@property(nonatomic,retain)UITextField *inputA, *inputB;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initNumberAInputField];
    [self initNumberBInputField];
    [self initResultLabel];
    [self initCalculateButton];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)initNumberAInputField
{
    self.inputA = [[UITextField alloc] initWithFrame:CGRectMake(20, 20, 44, 44)];
    self.inputA.backgroundColor = [UIColor grayColor];
    [self.view addSubview:self.inputA];
    
    UILabel *addLabel = [[UILabel alloc] initWithFrame:CGRectMake(80, 20, 44, 44)];
    addLabel.text = @"+";
    [self.view addSubview:addLabel];
}

- (void)initNumberBInputField
{
    self.inputB = [[UITextField alloc] initWithFrame:CGRectMake(144, 20, 44, 44)];
    self.inputB.backgroundColor = [UIColor grayColor];
    [self.view addSubview:self.inputB];
}

- (void)initCalculateButton
{
    self.calculateBtn = [[UIButton alloc] initWithFrame:CGRectMake(220, 20, 44, 44)];
    [self.calculateBtn addTarget:self action:@selector(addTwoNumbers) forControlEvents:UIControlEventTouchUpInside];
    [self.calculateBtn setTitle:@"=" forState:UIControlStateNormal];
    [self.calculateBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.view addSubview:self.calculateBtn];
}

- (void)initResultLabel
{
    self.resultLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, 84, 200, 200)];
    self.resultLabel.backgroundColor = [UIColor yellowColor];
    self.resultLabel.textColor = [UIColor redColor];
    self.resultLabel.font = [UIFont systemFontOfSize:88];
    [self.view addSubview:self.resultLabel];
}

- (void)addTwoNumbers
{
    if (self.delegate && [self.delegate respondsToSelector:@selector(addNummberA:andNumberB:)]) {
        [self.delegate addNummberA:[self.inputA.text floatValue] andNumberB:[self.inputB.text floatValue]];
    }
}

- (void)showResult:(CGFloat)result
{
    self.resultLabel.text = [NSString stringWithFormat:@"%d",(int)result];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
