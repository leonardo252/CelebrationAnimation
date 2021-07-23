//
//  CelebrationAnimator.m
//  CelebrationAnimator
//
//  Created by Leonardo Gomes on 23/07/21.
//

#import "CelebrationAnimator.h"
#import "ObjectAnimated.h"

@interface CelebrationAnimator () {
    UIView *mainView;

}

@end

@implementation CelebrationAnimator

- (instancetype)init:(UIView *)view {
    if (self = [super init]) {
        mainView = view;
    }

    return self;
}


- (void) startAnimation {
    UIImageView *imageHolder = [[UIImageView alloc] initWithFrame:CGRectMake(mainView.frame.size.width/2, -50, 50, 50)];
    ObjectAnimated *animation = [[ObjectAnimated alloc] initWithLayer:mainView layer:imageHolder.layer];

    for (double r = 1.0; r < 5.0; r+=0.1) {
        NSTimeInterval delayInSeconds = r;
        dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW, (int64_t)(delayInSeconds * NSEC_PER_SEC));
        dispatch_after(popTime, dispatch_get_main_queue(), ^(void){
            for (int i = 1; i <= 5; i++)
            {
                [animation addAnimate: 4];

            }
        });
    }
}


//    UIImage *image = [UIImage imageNamed:@"circle.png"];
//    imageHolder.image = image;
//    [self.view addSubview:imageHolder];

//    [animation animate];

//    for (int i = 1; i <= 20; i++)
//    {
//        [animation addAnimate: 4];
//
//    }


@end
