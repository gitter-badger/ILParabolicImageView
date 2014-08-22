//
//  ILParabolicImageView.h
//  ILParabolicImageViewExample
//
//  Created by Abraham Kuri on 8/21/14.
//  Copyright (c) 2014 icalialabs. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ILParabolicImageView : UIImageView

@property (nonatomic, assign, readwrite) CGPoint padding;
@property (nonatomic, assign, readwrite) CGFloat verticalPadding;
@property (nonatomic, assign, readwrite) CGFloat horizontalPadding;

- (id)initWithVerticalPadding:(CGFloat)horizontalPadding
              horizontalPadding:(CGFloat) verticalPadding;

- (id)initWithImage:(UIImage *)image
    horizontalPadding:(CGFloat)horizontalPadding
      verticalPadding:(CGFloat)verticalPadding;

@end
