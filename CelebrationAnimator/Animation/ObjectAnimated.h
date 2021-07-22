//
//  ObjectAnimated.h
//  CelebrationAnimator
//
//  Created by José Mateus Azevedo on 22/07/21.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ObjectAnimated : UIView

- (instancetype)initWithLayer:(UIView *)view
                        layer:(CALayer*) layer;

-(void)animate;

@end

NS_ASSUME_NONNULL_END
