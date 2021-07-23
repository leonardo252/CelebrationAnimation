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
    UIView *viewIn;
    CALayer *layerAnimation;
}

- (UIView *) drawObject;
- (UIBezierPath *) createPath;

@end

@implementation ObjectAnimated


- (instancetype)initWithLayer:(UIView *)view layer:(CALayer*) layer {
    if (self = [super init]) {
        viewIn = view;
        layerAnimation = layer;
    }

    return self;
}

- (UIView *) drawObject {
    CGFloat hue = ( arc4random() % 256 / 256.0 );
    CGFloat saturation = ( arc4random() % 128 / 256.0 ) + 0.5;
    CGFloat brightness = ( arc4random() % 128 / 256.0 ) + 0.5;
    UIColor *color = [UIColor colorWithHue:hue saturation:saturation brightness:brightness alpha:1];

    UIView *myBox  = [[UIView alloc] initWithFrame:CGRectMake(180, 35, 10, arc4random_uniform(40))];
    myBox.layer.cornerRadius = 4;
    myBox.backgroundColor = color;

    return myBox;
}

- (UIBezierPath *) createPath {
    UIBezierPath* circularPath = [UIBezierPath bezierPath];
    [circularPath moveToPoint:CGPointMake(arc4random_uniform(viewIn.frame.size.width), 0)];
    [circularPath addCurveToPoint:CGPointMake(arc4random_uniform(viewIn.frame.size.width), viewIn.frame.size.height)
                    controlPoint1:CGPointMake(arc4random_uniform(200), arc4random_uniform(230))
                    controlPoint2:CGPointMake(arc4random_uniform(230), arc4random_uniform(240))];

    return circularPath;
}

-(void)addAnimate: (NSTimeInterval ) time {
    // Objects's Draw
    UIView *myBox = [self drawObject];
    [viewIn addSubview: myBox];
    
    //  Path of the object
    UIBezierPath* circularPath = [self createPath];

    // Path's Draw
//    CAShapeLayer* layerShape = [CAShapeLayer layer];
//    layerShape.lineWidth = 3;
//    layerShape.fillColor = [UIColor clearColor].CGColor;
//    layerShape.strokeColor = [UIColor redColor].CGColor;
//    layerShape.path = circularPath.CGPath;
//    [viewIn.layer addSublayer:layerShape];

    //  Animating layer
    CAKeyframeAnimation* animation = [CAKeyframeAnimation animation];
    animation.keyPath = @"position";
    animation.path = circularPath.CGPath;
    animation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut];
    animation.duration = time;
    animation.repeatCount = HUGE_VALF;
    animation.autoreverses = NO;
    animation.rotationMode = kCAAnimationRotateAuto;
    [myBox.layer addAnimation: animation forKey: @"position"];

}


@end
