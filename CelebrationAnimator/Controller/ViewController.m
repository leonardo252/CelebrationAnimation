//
//  ViewController.m
//  CelebrationAnimator
//
//  Created by Leonardo Gomes on 21/07/21.
//

#import "ViewController.h"
#import "HelloLogger.h"
#import "ObjectAnimated.h"
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
