//
//  HomeAnimationUtil.m
//  AutoLayoutAnimationDemo
//
//  Created by taitanxiami on 15/12/12.
//  Copyright © 2015年 taitanxiami. All rights reserved.
//

#import "HomeAnimationUtil.h"

@implementation HomeAnimationUtil
+ (void)titleLableAnitionWith:(UILabel *)lable withView:(UIView *)view {
    
    [UIView animateWithDuration:1.5f animations:^{
        lable.transform = CGAffineTransformIdentity;
    } completion:^(BOOL finished) {
        
    }];
}

+(void)imageAnimation:(UIImageView *)imageView withView:(UIView *)view {
    
    [UIView animateWithDuration:1.5f animations:^{
        imageView.transform = CGAffineTransformIdentity;
    } completion:^(BOOL finished) {
        
    }];
}

+(void)textFieldAnimation:(NSLayoutConstraint *)constraint withView:(UIView *)view {
    
    constraint.constant = 225.0f;
    [UIView animateWithDuration:1.5f animations:^{       
        [view layoutIfNeeded];
    }];
    
}
+ (void)buttonAnimation:(UIButton *)button withView:(UIView *)view {
    
    [UIView animateWithDuration:1.5f animations:^{
        button.transform = CGAffineTransformIdentity;
    }];
}

+ (void)titleLabelMaskAnimation:(UIView *)view begintime:(NSTimeInterval)beginTime {
    
    //木宽有高
    CGPathRef beginPath = [UIBezierPath bezierPathWithRect:CGRectMake(0, 0, 0, view.bounds.size.height)].CGPath;
    CGPathRef endPath  = [UIBezierPath bezierPathWithRect:CGRectMake(0, 0, view.bounds.size.width, view.bounds.size.height)].CGPath;
    
    CAShapeLayer *layer = [CAShapeLayer layer];
    layer.fillColor = [UIColor whiteColor].CGColor;
    layer.path = beginPath;
    view.layer.mask = layer;
    
    
    CABasicAnimation *pathAniamtion = [CABasicAnimation animationWithKeyPath:@"path"];
    pathAniamtion.duration = 1.0f;
    pathAniamtion.beginTime = CACurrentMediaTime() + beginTime;
    pathAniamtion.fromValue = (id)layer.path;
    pathAniamtion.toValue =  (__bridge id)endPath;
    pathAniamtion.removedOnCompletion = NO;
    pathAniamtion.fillMode = kCAFillModeForwards;
    [layer addAnimation:pathAniamtion forKey:@"shapeLayerPath"];
    
    
    
    
}

@end
