//
//  ObjectAnimated.m
//  CelebrationAnimator
//
//  Created by José Mateus Azevedo on 22/07/21.
//

#import "ObjectAnimated.h"

@interface ObjectAnimated () {
    NSString *imageName;
    UIBezierPath *path;
    UIView *view;
    CALayer *layerAnimation;
}

@end

@implementation ObjectAnimated


- (instancetype)initWithLayer:(UIView *)view layer:(CALayer*) layer {
    if (self = [super init]) {
        view = view;
        layer = layer;
    }

    return self;
}

-(void)animate {
    //  Path of the object
    UIBezierPath* circularPath = [UIBezierPath bezierPath];
    [circularPath moveToPoint:CGPointMake(view.frame.size.width/2, 0)];
    [circularPath addCurveToPoint:CGPointMake(250, view.frame.size.height) controlPoint1:CGPointMake(250, 50) controlPoint2:CGPointMake(50, 250)];

    // Path's Draw
    CAShapeLayer* layerShape = [CAShapeLayer layer];
    layerShape.lineWidth = 3;
    layerShape.fillColor = [UIColor clearColor].CGColor;
    layerShape.strokeColor = [UIColor redColor].CGColor;
    layerShape.path = circularPath.CGPath;
    [view.layer addSublayer:layerShape];

    //  Animating layer
    CAKeyframeAnimation* animation = [CAKeyframeAnimation animation];
    animation.keyPath = @"position";
    animation.path = circularPath.CGPath;
    animation.duration = 5;
    animation.repeatCount = HUGE_VALF;
    animation.autoreverses = TRUE;
    animation.rotationMode = kCAAnimationRotateAuto;
    [layerAnimation addAnimation:animation forKey:@"position"];
    
}

@end
