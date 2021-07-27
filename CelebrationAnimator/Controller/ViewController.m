//
//  ViewController.m
//  CelebrationAnimator
//
//  Created by Leonardo Gomes on 21/07/21.
//

#import "ViewController.h"
#import "CelebrationAnimator.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    CelebrationAnimator *animator = [[CelebrationAnimator alloc] init:self.view];
    [animator startAnimation: [NSArray arrayWithObjects: @"balloon", @"conffeti", nil]];

}

@end
