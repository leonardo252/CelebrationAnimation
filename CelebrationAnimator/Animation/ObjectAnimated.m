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

@end

@implementation ObjectAnimated


- (instancetype)initWithLayer:(UIView *)view layer:(CALayer*) layer {
    if (self = [super init]) {
        viewIn = view;
        layerAnimation = layer;
    }

    return self;
}

-(void)animate {
    
    printf("Tamo aqui pelo menos");
//    UIImageView *imageHolder = [[UIImageView alloc] initWithFrame:CGRectMake(self->view_in.frame.size.width/2, self->view_in.frame.size.height/2, 50, 50)];
//    UIImage *image = [UIImage imageNamed:@"circle.png"];
//    imageHolder.image = image;
//    imageHolder.backgroundColor = [UIColor blackColor];
//    [view_in addSubview:imageHolder];
    
    
    //  Path of the object
    UIBezierPath* circularPath = [UIBezierPath bezierPath];
    [circularPath moveToPoint:CGPointMake(viewIn.frame.size.width/2, 0)];
    [circularPath addCurveToPoint:CGPointMake(250, viewIn.frame.size.height) controlPoint1:CGPointMake(250, 50) controlPoint2:CGPointMake(50, 250)];

    // Path's Draw
    CAShapeLayer* layerShape = [CAShapeLayer layer];
    layerShape.lineWidth = 3;
    layerShape.fillColor = [UIColor clearColor].CGColor;
    layerShape.strokeColor = [UIColor redColor].CGColor;
    layerShape.path = circularPath.CGPath;
    [viewIn.layer addSublayer:layerShape];

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

-(void)addAnimate {
    
//    printf("Tamo aqui pelo menos");
//    UIImageView *imageHolder = [[UIImageView alloc] initWithFrame:CGRectMake(self->viewIn.frame.size.width/2, self->viewIn.frame.size.height/2, 50, 50)];
//    UIImage *image = [UIImage imageNamed:@"circle.png"];
//    imageHolder.image = image;
//    [viewIn addSubview:imageHolder];
    
    CGFloat hue = ( arc4random() % 256 / 256.0 );  //  0.0 to 1.0
    CGFloat saturation = ( arc4random() % 128 / 256.0 ) + 0.5;  //  0.5 to 1.0, away from white
    CGFloat brightness = ( arc4random() % 128 / 256.0 ) + 0.5;  //  0.5 to 1.0, away from black
    UIColor *color = [UIColor colorWithHue:hue saturation:saturation brightness:brightness alpha:1];
    
    UIView *myBox  = [[UIView alloc] initWithFrame:CGRectMake(180, 35, 10, arc4random_uniform(40))];
    myBox.layer.cornerRadius = 4;
    myBox.backgroundColor = color;
    [viewIn addSubview:myBox];
    
    //  Path of the object
    UIBezierPath* circularPath = [UIBezierPath bezierPath];
    [circularPath moveToPoint:CGPointMake(arc4random_uniform(viewIn.frame.size.width), 0)];
    [circularPath addCurveToPoint:CGPointMake(arc4random_uniform(viewIn.frame.size.width), viewIn.frame.size.height)
                    controlPoint1:CGPointMake(arc4random_uniform(200), arc4random_uniform(230))
                    controlPoint2:CGPointMake(arc4random_uniform(230), arc4random_uniform(240))];

    // Path's Draw
    CAShapeLayer* layerShape = [CAShapeLayer layer];
    layerShape.lineWidth = 3;
    layerShape.fillColor = [UIColor clearColor].CGColor;
    layerShape.strokeColor = [UIColor redColor].CGColor;
    layerShape.path = circularPath.CGPath;
//    [viewIn.layer addSublayer:layerShape];

    //  Animating layer
    CAKeyframeAnimation* animation = [CAKeyframeAnimation animation];
    animation.keyPath = @"position";
    animation.path = circularPath.CGPath;
    animation.duration = 5;
    animation.repeatCount = HUGE_VALF;
    animation.autoreverses = NO;
    animation.rotationMode = kCAAnimationRotateAuto;
    [myBox.layer addAnimation:animation forKey:@"position"];
    
}


@end
