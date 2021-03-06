//
//  SPFTPTestViewController.m
//  SpeedTest
//
//  Created by Pavel Skovorodko on 2/21/18.
//  Copyright © 2018 Dmtech. All rights reserved.
//

#import "SPFTPViewController.h"
#import "SPInjectorContainer.h"

@interface SPSpeedViewController ()<SPSpeedTestManagerDelegate> {
    UILabel *_currentsSpeedLabel;
    UILabel *_pickSpeedLabel;
    UILabel *_averageSpeedLabel;
    UILabel *_stateLabel;
}
@end

@implementation SPSpeedViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setTitle:@"Test" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    button.translatesAutoresizingMaskIntoConstraints = NO;
    [button addTarget:self action:@selector(buttonTouch) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    [NSLayoutConstraint constraintWithItem:button attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeCenterX multiplier:1.0 constant:0].active = YES;
    [NSLayoutConstraint constraintWithItem:button attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeCenterY multiplier:1.0 constant:0].active = YES;
    [NSLayoutConstraint constraintWithItem:button attribute:NSLayoutAttributeRight relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeRight multiplier:1.0 constant:0].active = YES;
    [NSLayoutConstraint constraintWithItem:button attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeLeft multiplier:1.0 constant:0].active = YES;
    
    _currentsSpeedLabel = [UILabel new];
    _currentsSpeedLabel.translatesAutoresizingMaskIntoConstraints = NO;
    _currentsSpeedLabel.textColor = [UIColor blueColor];
    _currentsSpeedLabel.font = [UIFont systemFontOfSize:17];
    [self.view addSubview:_currentsSpeedLabel];
    
    [NSLayoutConstraint constraintWithItem:_currentsSpeedLabel attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeCenterX multiplier:1.0 constant:0].active = YES;
    [NSLayoutConstraint constraintWithItem:_currentsSpeedLabel attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:button attribute:NSLayoutAttributeBottom multiplier:1.0 constant:10].active = YES;
    
    _pickSpeedLabel = [UILabel new];
    _pickSpeedLabel.translatesAutoresizingMaskIntoConstraints = NO;
    _pickSpeedLabel.textColor = [UIColor blueColor];
    _pickSpeedLabel.font = [UIFont systemFontOfSize:17];
    [self.view addSubview:_pickSpeedLabel];
    
    [NSLayoutConstraint constraintWithItem:_pickSpeedLabel attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:_currentsSpeedLabel attribute:NSLayoutAttributeRight multiplier:1.0 constant:10].active = YES;
    [NSLayoutConstraint constraintWithItem:_pickSpeedLabel attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:_currentsSpeedLabel attribute:NSLayoutAttributeTop multiplier:1.0 constant:0].active = YES;
    
    
    _averageSpeedLabel = [UILabel new];
    _averageSpeedLabel.translatesAutoresizingMaskIntoConstraints = NO;
    _averageSpeedLabel.textColor = [UIColor blueColor];
    _averageSpeedLabel.font = [UIFont systemFontOfSize:17];
    [self.view addSubview:_averageSpeedLabel];
    
    [NSLayoutConstraint constraintWithItem:_averageSpeedLabel attribute:NSLayoutAttributeRight relatedBy:NSLayoutRelationEqual toItem:_currentsSpeedLabel attribute:NSLayoutAttributeLeft multiplier:1.0 constant:-10].active = YES;
    [NSLayoutConstraint constraintWithItem:_averageSpeedLabel attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:_currentsSpeedLabel attribute:NSLayoutAttributeTop multiplier:1.0 constant:0].active = YES;
    
    
    _stateLabel = [UILabel new];
    _stateLabel.translatesAutoresizingMaskIntoConstraints = NO;
    _stateLabel.textColor = [UIColor blueColor];
    _stateLabel.font = [UIFont systemFontOfSize:17];
    [self.view addSubview:_stateLabel];
    
    [NSLayoutConstraint constraintWithItem:_stateLabel attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeCenterX multiplier:1.0 constant:0].active = YES;
    [NSLayoutConstraint constraintWithItem:_stateLabel attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:_currentsSpeedLabel attribute:NSLayoutAttributeBottom multiplier:1.0 constant:10].active = YES;
}

@end
