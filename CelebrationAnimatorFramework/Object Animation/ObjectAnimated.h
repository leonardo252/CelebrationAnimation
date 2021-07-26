//
//  ObjectAnimated.h
//  CelebrationAnimator
//
//  Created by José Mateus Azevedo on 22/07/21.
//

#import <UIKit/UIKit.h>
#include <stdlib.h>


NS_ASSUME_NONNULL_BEGIN

@interface ObjectAnimated : NSObject

- (instancetype)initWithLayer:(UIView *)view
                        layer:(CALayer*) layer;

- (void)addAnimate:(NSTimeInterval) time;
@end

NS_ASSUME_NONNULL_END
