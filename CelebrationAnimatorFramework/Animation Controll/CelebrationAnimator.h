//
//  CelebrationAnimator.h
//  CelebrationAnimator
//
//  Created by Leonardo Gomes on 23/07/21.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#include <stdlib.h>
#include <AnimatorClass.h>

NS_ASSUME_NONNULL_BEGIN

@interface CelebrationAnimator : NSObject

- (instancetype)init:(UIView *)view;

- (void) startAnimation;

@end

NS_ASSUME_NONNULL_END
