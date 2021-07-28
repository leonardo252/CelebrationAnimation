# Celebration Animator

[![CocoaPods License](https://img.shields.io/cocoapods/l/SwiftySound.svg)](https://raw.githubusercontent.com/adamcichy/SwiftySound/master/LICENSE)
[![CocoaPods Platforms](https://img.shields.io/cocoapods/p/SwiftySound.svg)](https://cocoapods.org/pods/SwiftySound)



## Overview
Celebration animator is a lib that can add an animation of celebration in an easy way, with confetti and Balloons.

![Animation](Sources/celebrationAnimator.gif)


# Usage

### Important classes
`CelebrationAnimator`: It's the class that add the animation to the view and remove it later.

### Examples
#### Creating instances
How create intakes of the object CelebrationAnimator to be used.

Swift
```swift
let animator = CelebrationAnimator(self.view)
```
Objective-c
```objective-c
CelebrationAnimator *animator = [[CelebrationAnimator alloc] init:self.view];
```
Should pass the view that will have the animation

#### Adding animation
Should pass an array with name of animation that you want, it's possible pass `balloon` and `conffetti`

Swift
```swift
animator.startAnimation(["conffeti", "balloon"])
```
Objective-c
```objective-c
[animator startAnimation: [NSArray arrayWithObjects: @"conffeti", nil]];
```

The animation will start after this call and will be removed in the end.


# Installation

#### Objective-C

Add the `LSAnimator` framework to your project.

#### Swift

Add the `CoreAnimator` framework to your project.

### Manually

Either clone the repo and manually add the Files in [CelebrationAnimator](https://github.com/leonardo252/CelebrationAnimation)


## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License
[MIT](https://choosealicense.com/licenses/mit/)
