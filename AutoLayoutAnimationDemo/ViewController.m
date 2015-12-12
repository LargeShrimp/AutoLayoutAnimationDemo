//
//  ViewController.m
//  AutoLayoutAnimationDemo
//
//  Created by taitanxiami on 15/12/12.
//  Copyright © 2015年 taitanxiami. All rights reserved.
//

#import "ViewController.h"
#import "HomeAnimationUtil.h"
@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *HILabkle;
@property (weak, nonatomic) IBOutlet UILabel *topTipsLabel;
@property (weak, nonatomic) IBOutlet UITextField *phoneTextField;
@property (weak, nonatomic) IBOutlet UIImageView *phoneImageView;
@property (weak, nonatomic) IBOutlet UIButton *loginButton;
@property (weak, nonatomic) IBOutlet UILabel *loginTipsLabekl;
@property (weak, nonatomic) IBOutlet UIView *bottomView;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *textFieldConstraint;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.HILabkle.transform = CGAffineTransformMakeTranslation(0, -200);
    self.topTipsLabel.transform = CGAffineTransformMakeTranslation(0, -200);
    self.phoneImageView.transform = CGAffineTransformMakeTranslation(-200, 0);
    self.textFieldConstraint.constant = 0.0f;
    self.loginButton.transform = CGAffineTransformMakeScale(0, 0);
    
}

-(void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:YES];
    
    [HomeAnimationUtil titleLableAnitionWith:self.HILabkle withView:self.view];
    [HomeAnimationUtil titleLableAnitionWith:self.topTipsLabel withView:self.view];
    [HomeAnimationUtil imageAnimation:self.phoneImageView withView:self.view];
    [HomeAnimationUtil textFieldAnimation:self.textFieldConstraint withView:self.view];
    [HomeAnimationUtil buttonAnimation:self.loginButton withView:self.view];
    [HomeAnimationUtil titleLabelMaskAnimation:self.loginTipsLabekl begintime:0];
    [HomeAnimationUtil titleLabelMaskAnimation:self.bottomView begintime:1.5f];
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

@end
