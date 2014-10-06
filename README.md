# [ILParabolicImageView](https://github.com/IcaliaLabs/ILParabolicImageView)
[![Gitter](https://badges.gitter.im/Join Chat.svg)](https://gitter.im/IcaliaLabs/ILParabolicImageView?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)


ILParabolicImageView is a super simple library to add a moving effect to an image as the phone moves


#Install

Install with [cocoapods](http://cocoapods.org/)

```
pod 'ILParabolicImageView'
```

#Usage

```
CGRect frame;
frame.origin.x = 0;
frame.size.width = self.view.frame.size.width;
frame.size.height = self.view.frame.size.height;
frame.origin.y = 0;
        
ILParabolicBackgroundImageView *imageView = [[ILParabolicBackgroundImageView alloc] initWithFrame:frame];
imageView.image = self.backgroundImages[i];

[self.view addSubview:imageView];

```

## Heroes
**Abraham Kuri**

+ [http://github.com/kurenn](http://github.com/kurenn)


## Copyright and license

Code and documentation copyright 2013-2014 Icalia Labs. Code released under [the MIT license](LICENSE).
