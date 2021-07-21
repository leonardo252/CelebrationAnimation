//
//  HelloLogger.m
//  CelebrationAnimatorFramework
//
//  Created by Leonardo Gomes on 21/07/21.
//

#import "HelloLogger.h"

@implementation HelloLogger

- (void)helloWithText:(NSString *)text {
    NSLog(@"Hello, %@", text);
}

- (void)notHelloText:(NSString *)text {
    NSLog(@"Not Hello for you, %@", text);
}

@end
