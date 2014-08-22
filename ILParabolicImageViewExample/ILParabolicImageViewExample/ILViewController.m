//
//  ILViewController.m
//  ILParabolicImageViewExample
//
//  Created by Abraham Kuri on 8/21/14.
//  Copyright (c) 2014 icalialabs. All rights reserved.
//

#import "ILViewController.h"
#import "ILParabolicImageView.h"

@interface ILViewController ()
@property (weak, nonatomic) IBOutlet ILParabolicImageView *imageView;

@end

@implementation ILViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.imageView.image = [UIImage imageNamed:@"image.jpg"];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
