//
//  ViewController.m
//  CelebrationAnimator
//
//  Created by Leonardo Gomes on 21/07/21.
//

#import "ViewController.h"
//#import "HelloLogger.h"
#import "CelebrationAnimator.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
//    HelloLogger *logger = [[HelloLogger alloc] init];
//    HelloLogger *newLogger = new HelloLogger();
//    [logger withHello:@"Leo e Mateus"];
     
    CelebrationAnimator *animator = [[CelebrationAnimator alloc] init:self.view ];
    [animator startAnimation];
    

//    UIView *myBox  = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 70, 70)];
//
//
//    // Oval Drawing
//    UIBezierPath* ovalPath = [UIBezierPath bezierPathWithOvalInRect: CGRectMake(85, 16, 47, 63)];
//    CAShapeLayer *shapeOval = [CAShapeLayer layer];
//    shapeOval.fillColor = CGColorCreateSRGB(244, 0, 0, 1);
//    shapeOval.path = ovalPath.CGPath;
//    [myBox.layer addSublayer:shapeOval];
//
//    UIBezierPath* rabinho = [UIBezierPath bezierPath];
//    [rabinho moveToPoint: CGPointMake(108.5, 110.5)];
//    [rabinho addCurveToPoint: CGPointMake(105.5, 91.5) controlPoint1: CGPointMake(114.5, 94.5) controlPoint2: CGPointMake(105.5, 95.75)];
//    [rabinho addCurveToPoint: CGPointMake(108.5, 78.5) controlPoint1: CGPointMake(105.5, 87.25) controlPoint2: CGPointMake(108.5, 78.5)];
//
//    CAShapeLayer *rabinhoLayer = [CAShapeLayer layer];
//    rabinhoLayer.path = rabinho.CGPath;
//    rabinhoLayer.fillColor = CGColorCreateSRGB(0, 0, 0, 0);
//    rabinhoLayer.strokeColor = CGColorCreateSRGB(0, 0, 0, 1);
//    [myBox.layer addSublayer:rabinhoLayer];
//
//    [self.view addSubview:myBox];
//
//    UIBezierPath* circularPath = [UIBezierPath bezierPath];
//    [circularPath moveToPoint:CGPointMake(arc4random_uniform(self.view.frame.size.width), self.view.frame.size.height)];
//    [circularPath addCurveToPoint:CGPointMake(arc4random_uniform(self.view.frame.size.width), 0)
//                    controlPoint1:CGPointMake(arc4random_uniform(200), arc4random_uniform(230))
//                    controlPoint2:CGPointMake(arc4random_uniform(230), arc4random_uniform(240))];
//
//
//    //  Animating layer
//    CAKeyframeAnimation *animation = [CAKeyframeAnimation animation];
//    animation.keyPath = @"position";
//    animation.path = circularPath.CGPath;
////    animation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut];
//    animation.duration = 5;
//////    animation.repeatCount = HUGE_VALF;
////    animation.removedOnCompletion = YES;
//    animation.repeatCount = 6;
//    animation.autoreverses = NO;
//    animation.rotationMode = kCAValueFunctionRotateX;
//    [myBox.layer addAnimation: animation forKey: @"position"];
    
    
//
//    UIImageView *imageHolder = [[UIImageView alloc] initWithFrame:CGRectMake(self.view.frame.size.width/2, -50, 50, 50)];
////    UIImage *image = [UIImage imageNamed:@"circle.png"];
////    imageHolder.image = image;
////    [self.view addSubview:imageHolder];
//
//    ObjectAnimated *animation = [[ObjectAnimated alloc] initWithLayer:self.view layer:imageHolder.layer];
////    [animation animate];
//
////    for (int i = 1; i <= 20; i++)
////    {
////        [animation addAnimate: 4];
////
////    }
//
//    for (double r = 1.0; r < 4.0; r+=0.5) {
//        NSTimeInterval delayInSeconds = r;
//        dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW, (int64_t)(delayInSeconds * NSEC_PER_SEC));
//        dispatch_after(popTime, dispatch_get_main_queue(), ^(void){
//            for (int i = 1; i <= 20; i++)
//            {
//                [animation addAnimate: 4];
//
//            }
//        });
//    }
    
//    
//    NSTimeInterval delayInSeconds = 1.0;
//    dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW, (int64_t)(delayInSeconds * NSEC_PER_SEC));
//    dispatch_after(popTime, dispatch_get_main_queue(), ^(void){
//        for (int i = 1; i <= 20; i++)
//        {
//            [animation addAnimate: 4];
//
//        }
//    });
//    
//    delayInSeconds = 1.5;
//    popTime = dispatch_time(DISPATCH_TIME_NOW, (int64_t)(delayInSeconds * NSEC_PER_SEC));
//    dispatch_after(popTime, dispatch_get_main_queue(), ^(void){
//        for (int i = 1; i <= 20; i++)
//        {
//            [animation addAnimate: 4];
//
//        }
//    });
//
//    delayInSeconds = 2.0;
//    popTime = dispatch_time(DISPATCH_TIME_NOW, (int64_t)(delayInSeconds * NSEC_PER_SEC));
//    dispatch_after(popTime, dispatch_get_main_queue(), ^(void){
//        for (int i = 1; i <= 20; i++)
//        {
//            [animation addAnimate: 4];
//
//        }
//    });
//    
}


@end
