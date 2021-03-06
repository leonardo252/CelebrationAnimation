//
//  DrawingClass.m
//  CelebrationAnimatorFramework
//
//  Created by Leonardo Gomes on 26/07/21.
//

#import "DrawingClass.h"

@implementation DrawingClass

-(UIView *) drawConfetti {
    CGFloat hue = ( arc4random() % 256 / 256.0 );
    CGFloat saturation = ( arc4random() % 128 / 256.0 ) + 0.5;
    CGFloat brightness = ( arc4random() % 128 / 256.0 ) + 0.5;
    UIColor *color = [UIColor colorWithHue:hue saturation:saturation brightness:brightness alpha:1];

    UIView *myBox  = [[UIView alloc] initWithFrame:CGRectMake(180, 35, 10, arc4random_uniform(40))];
    myBox.layer.cornerRadius = 4;
    myBox.backgroundColor = color;

    return myBox;
}

-(UIView *) drawBalloon {
    UIView *myBox  = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 70, 70)];
    
    UIBezierPath* ovalPath = [UIBezierPath bezierPathWithOvalInRect: CGRectMake(85, 16, 47, 63)];
    CAShapeLayer *shapeOval = [CAShapeLayer layer];
    shapeOval.fillColor = CGColorCreateSRGB(((float)rand() / RAND_MAX) * 1,((float)rand() / RAND_MAX) * 1, ((float)rand() / RAND_MAX) * 1, 1);
    shapeOval.path = ovalPath.CGPath;
    [myBox.layer addSublayer:shapeOval];
    
    UIBezierPath *tail = [UIBezierPath bezierPath];
    [tail moveToPoint: CGPointMake(108.5, 110.5)];
    [tail addCurveToPoint: CGPointMake(105.5, 91.5) controlPoint1: CGPointMake(114.5, 94.5) controlPoint2: CGPointMake(105.5, 95.75)];
    [tail addCurveToPoint: CGPointMake(108.5, 78.5) controlPoint1: CGPointMake(105.5, 87.25) controlPoint2: CGPointMake(108.5, 78.5)];

    CAShapeLayer *tailLayer = [CAShapeLayer layer];
    tailLayer.path = tail.CGPath;
    tailLayer.fillColor = CGColorCreateSRGB(0, 0, 0, 0);
    tailLayer.strokeColor = CGColorCreateSRGB(0, 0, 0, 1);
    [myBox.layer addSublayer: tailLayer];
    
    return myBox;
}


@end
