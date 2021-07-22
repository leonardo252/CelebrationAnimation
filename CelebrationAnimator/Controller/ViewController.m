//
//  ViewController.m
//  CelebrationAnimator
//
//  Created by Leonardo Gomes on 21/07/21.
//

#import "ViewController.h"
#import "HelloLogger.h"
#import "ObjectAnimated.h"

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
    [self.view addSubview:imageHolder];

    ObjectAnimated *animation = [[ObjectAnimated alloc] initWithLayer:self.view layer:imageHolder.layer];
    animation.animate;

}


@end
