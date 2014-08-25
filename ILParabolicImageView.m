//
//  ILParabolicImageView.m
//
//  Created by Abraham Kuri on 8/21/14.
//  Copyright (c) 2014 Icalia Labs. All rights reserved.
//

#import "ILParabolicImageView.h"

@interface ILParabolicImageView ()

@property (nonatomic, strong, readwrite) UIImageView *imageView;

@end

@implementation ILParabolicImageView

-(id)initWithVerticalPadding:(CGFloat)horizontalPadding
           horizontalPadding:(CGFloat)verticalPadding {
    self = [super init];
    
    if (self) {
        [self setup];
        self.verticalPadding = verticalPadding;
        self.horizontalPadding = horizontalPadding;
    }
    
    return self;
    
}

- (id)initWithImage:(UIImage *)image
  horizontalPadding:(CGFloat)horizontalPadding
    verticalPadding:(CGFloat)verticalPadding {
    self = [super init];
    
    if (self) {
        self = [self initWithVerticalPadding:verticalPadding horizontalPadding:horizontalPadding];
        self.image = image;
    }
    
    return self;
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setup];
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self setup];
    }
    return self;
}

- (void)setImage:(UIImage *)image
{
    // Store image
    self.imageView.image = image;
    self.imageView.image = [self imageWithImage:image
                                  convertToSize:CGSizeMake(self.conversionImageWidth, self.conversionImageHeight)];
    self.imageView.contentMode = UIViewContentModeCenter;
    
    // Remove exising motion effects
    for (UIMotionEffect *effect in [self.imageView motionEffects]) {
        [self.imageView removeMotionEffect:effect];
    }
    
    // Update padding
    [self setPadding:self.padding];
}

- (UIImage *)imageWithImage:(UIImage *)image convertToSize:(CGSize)size {
    
    UIGraphicsBeginImageContext(size);
    [image drawInRect:CGRectMake(0, 0, size.width, size.height)];
    UIImage *destImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return destImage;
}

- (void)setPadding:(CGPoint)padding
{
    // Store padding value
    _padding = padding;
    
    // Add motion effect to image view
    //
    // Horizontal movement
    UIInterpolatingMotionEffect *horizMotionEffect =
    [self RCC_horizontalEffectWithMinDistance:@(-self.horizontalPadding)
                               andMaxDistance:@(self.horizontalPadding)];
    // Vertical movement
    UIInterpolatingMotionEffect *vertMotionEffect =
    [self RCC_verticalEffectWithMinDistance:@(-self.verticalPadding)
                             andMaxDistance:@(self.verticalPadding)];
    
    // Adds the motion effect
    [self.imageView addMotionEffect:horizMotionEffect];
    [self.imageView addMotionEffect:vertMotionEffect];
}

- (UIInterpolatingMotionEffect *)RCC_horizontalEffectWithMinDistance:(NSNumber *)min
                                                      andMaxDistance:(NSNumber *)max
{
    UIInterpolatingMotionEffect *motionEffect =
    [[UIInterpolatingMotionEffect alloc] initWithKeyPath:@"center.x"
                                                    type:UIInterpolatingMotionEffectTypeTiltAlongHorizontalAxis];
    
    motionEffect.minimumRelativeValue = min;
    motionEffect.maximumRelativeValue = max;
    
    return motionEffect;
    
}

- (UIInterpolatingMotionEffect *)RCC_verticalEffectWithMinDistance:(NSNumber *)min
                                                    andMaxDistance:(NSNumber *)max
{
    UIInterpolatingMotionEffect *motionEffect =
    [[UIInterpolatingMotionEffect alloc] initWithKeyPath:@"center.y"
                                                    type:UIInterpolatingMotionEffectTypeTiltAlongVerticalAxis];
    
    motionEffect.minimumRelativeValue = min;
    motionEffect.maximumRelativeValue = max;
    
    return motionEffect;
}


- (void)setup
{
    // Default values
    self.horizontalPadding = 40;
    self.verticalPadding = 40;
    
    self.conversionImageWidth = 515.0f;
    self.conversionImageHeight = 640.0f;
    
    self.clipsToBounds = YES;
    
    // Add image subview
    self.imageView = [[UIImageView alloc] initWithFrame:self.bounds];
    self.imageView.contentMode = UIViewContentModeScaleAspectFill;
    self.imageView.clipsToBounds = NO;
    self.imageView.backgroundColor = [UIColor clearColor];
    self.imageView.opaque = NO;
    [self addSubview:self.imageView];
}

@end
