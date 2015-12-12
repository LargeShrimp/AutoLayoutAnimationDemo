//
//  HomeAnimationUtil.h
//  AutoLayoutAnimationDemo
//
//  Created by taitanxiami on 15/12/12.
//  Copyright © 2015年 taitanxiami. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface HomeAnimationUtil : NSObject

+ (void)titleLableAnitionWith:(UILabel *)lable withView:(UIView *)view;

+ (void)imageAnimation:(UIImageView *)imageView withView:(UIView *)view;

+ (void)textFieldAnimation:(NSLayoutConstraint *)constraint withView:(UIView *)view;
+ (void)buttonAnimation:(UIButton *)button withView:(UIView *)view;
+ (void)titleLabelMaskAnimation:(UIView *)view begintime:(NSTimeInterval)beginTime;

@end
