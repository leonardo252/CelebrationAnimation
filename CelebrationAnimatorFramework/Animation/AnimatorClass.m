//
//  AnimatorClass.m
//  CelebrationAnimatorFramework
//
//  Created by Leonardo Gomes on 26/07/21.
//

#import "AnimatorClass.h"

@interface AnimatorClass () {
    UIView *viewIn;
    CAKeyframeAnimation* animation;
}

- (UIBezierPath *) pathConffeti;
- (UIBezierPath *) pathBalloon;

@end

@implementation AnimatorClass


- (instancetype)initWithView:(UIView *)view {
    if (self = [super init]) {
        viewIn = view;        
    }

    return self;
}

- (UIBezierPath *) pathConffeti {
    UIBezierPath* circularPath = [UIBezierPath bezierPath];
    [circularPath moveToPoint:CGPointMake(arc4random_uniform(viewIn.frame.size.width), 0)];
    [circularPath addCurveToPoint:CGPointMake(arc4random_uniform(viewIn.frame.size.width), viewIn.frame.size.height)
                    controlPoint1:CGPointMake(arc4random_uniform(200), arc4random_uniform(230))
                    controlPoint2:CGPointMake(arc4random_uniform(230), arc4random_uniform(240))];

    return circularPath;
}

- (UIBezierPath *) pathBalloon {
    UIBezierPath* circularPath = [UIBezierPath bezierPath];
    [circularPath moveToPoint:CGPointMake(arc4random_uniform(viewIn.frame.size.width), viewIn.frame.size.height)];
    [circularPath addCurveToPoint:CGPointMake(arc4random_uniform(viewIn.frame.size.width), 0)
                    controlPoint1:CGPointMake(arc4random_uniform(200), arc4random_uniform(230))
                    controlPoint2:CGPointMake(arc4random_uniform(230), arc4random_uniform(240))];

    return circularPath;
}


- (void) animateConffeti: (NSTimeInterval) time {
    
    int repeates = 2;
    
    UIView *conffetiView =  [[DrawingClass alloc] drawConfetti];
    
    UIBezierPath *conffetiPath = [self pathConffeti];
    
    animation = [CAKeyframeAnimation animation];
    animation.keyPath = @"position";
    animation.path = conffetiPath.CGPath;
    animation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut];
    animation.duration = time;
//    animation.repeatCount = HUGE_VALF;
    animation.removedOnCompletion = YES;
    animation.repeatCount = repeates;
    animation.autoreverses = NO;
    animation.rotationMode = kCAAnimationRotateAuto;
    [conffetiView.layer addAnimation: animation forKey: @"position"];
    
    [viewIn addSubview:conffetiView];
    
    [conffetiView performSelector:@selector(removeFromSuperview) withObject:nil afterDelay:time * repeates];
    
}

- (void) animateBallon: (NSTimeInterval) time {
    
    int repeates = 2;
    
    UIView *balloonView =  [[DrawingClass alloc] drawBalloon];
    
    UIBezierPath *ballonPath = [self pathBalloon];
    
    animation = [CAKeyframeAnimation animation];
    animation.keyPath = @"position";
    animation.path = ballonPath.CGPath;
    animation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut];
    animation.duration = time;
//    animation.repeatCount = HUGE_VALF;
    animation.removedOnCompletion = YES;
    animation.repeatCount = repeates;
    animation.autoreverses = NO;
    animation.rotationMode = kCAValueFunctionRotateX;
    [balloonView.layer addAnimation: animation forKey: @"position"];
    
    [viewIn addSubview:balloonView];
    
    [balloonView performSelector:@selector(removeFromSuperview) withObject:nil afterDelay:time * repeates];
}

@end
