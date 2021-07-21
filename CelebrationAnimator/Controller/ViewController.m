//
//  ViewController.m
//  CelebrationAnimator
//
//  Created by Leonardo Gomes on 21/07/21.
//

#import "ViewController.h"
#import "HelloLogger.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor greenColor];
    
//    HelloLogger *logger = [[HelloLogger alloc] init];
//    HelloLogger *newLogger = new HelloLogger();
//    [logger withHello:@"Leo e Mateus"];
     
    
    
    UIImageView *imageHolder = [[UIImageView alloc] initWithFrame:CGRectMake(self.view.frame.size.width/2, -50, 50, 50)];
    UIImage *image = [UIImage imageNamed:@"circle.png"];
    imageHolder.image = image;
    // optional:
    // [imageHolder sizeToFit];
    [self.view addSubview:imageHolder];
    
    
    CAKeyframeAnimation *theAnimation;
    theAnimation = [CAKeyframeAnimation animationWithKeyPath:@"position"];
//    NSArray *pathArray = @[ [NSValue valueWithCGPoint:CGPointMake(10., 10.)], [NSValue valueWithCGPoint:CGPointMake(100., 400.)], [NSValue valueWithCGPoint:CGPointMake(100., 200.)], [NSValue valueWithCGPoint:CGPointMake(10., 10.)], ];
//    theAnimation.values = pathArray;

    CGRect boundingRect = CGRectMake(50, 50, 400, 400);
    theAnimation.path = CFAutorelease(CGPathCreateWithEllipseInRect(boundingRect, NULL));
    theAnimation.calculationMode = kCAAnimationPaced;
    theAnimation.rotationMode = kCAAnimationRotateAuto;
    
    theAnimation.duration = 3.0;
    theAnimation.repeatCount = 50;
    theAnimation.autoreverses = NO; //(YES) — Reverses into the initial value either smoothly or not;
//    theAnimation.fromValue = [NSValue valueWithCGPoint: imageHolder.frame.origin];
//    theAnimation.toValue = [NSValue valueWithCGPoint:CGPointMake(self.view.frame.size.width/2, self.view.frame.size.height + 280/2 )];
    
//    [imageHolder.layer addAnimation:theAnimation forKey:@"animatePosition"];
    
    UIBezierPath* circularPath = [UIBezierPath bezierPath];
    [circularPath moveToPoint:CGPointMake(self.view.frame.size.width/2, 0)];
    [circularPath addCurveToPoint:CGPointMake(250, 800) controlPoint1:CGPointMake(250, 50) controlPoint2:CGPointMake(50, 250)];
    CAShapeLayer* layerShape = [CAShapeLayer layer];
    layerShape.lineWidth = 3;
    layerShape.fillColor = [UIColor clearColor].CGColor;
    layerShape.strokeColor = [UIColor redColor].CGColor;
    layerShape.path = circularPath.CGPath;
    [self.view.layer addSublayer:layerShape];

    
    CAKeyframeAnimation* animation = [CAKeyframeAnimation animation];
    animation.keyPath = @"position";
    animation.path = circularPath.CGPath;
//    animation.timingFunction = kCAMediaTimingFunctionEaseInEaseOut;
    animation.duration = 5;
    animation.repeatCount = HUGE_VALF;
    animation.autoreverses = TRUE;
    animation.rotationMode = kCAAnimationRotateAuto;
    [imageHolder.layer addAnimation:animation forKey:@"position"];
}


@end
