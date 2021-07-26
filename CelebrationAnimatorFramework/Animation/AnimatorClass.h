//
//  AnimatorClass.h
//  CelebrationAnimatorFramework
//
//  Created by Leonardo Gomes on 26/07/21.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#include <stdlib.h>
#include <DrawingClass.h>


NS_ASSUME_NONNULL_BEGIN

@interface AnimatorClass : NSObject

- (instancetype)initWithView:(UIView *)view;
- (void) animateBallon: (NSTimeInterval) time;
- (void) animateConffeti: (NSTimeInterval) time;

@end

NS_ASSUME_NONNULL_END
