//
//  KWViewController.h
//  AgboXwingIphone
//
//  Created by Andres Kwan on 5/9/13.
//  Copyright (c) 2013 Kwan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface KWViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *spaceView;
@property (weak, nonatomic) IBOutlet UIImageView *xwingView;

-(void) onTap:(UITapGestureRecognizer *)tap;
@end
