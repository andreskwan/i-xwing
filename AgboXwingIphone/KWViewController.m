//
//  KWViewController.m
//  AgboXwingIphone
//
//  Created by Andres Kwan on 5/9/13.
//  Copyright (c) 2013 Kwan. All rights reserved.
//

#import "KWViewController.h"

@interface KWViewController ()

@end

@implementation KWViewController

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    //creamos un detector de tap
    UITapGestureRecognizer * tap = [[UITapGestureRecognizer alloc]
                                    initWithTarget:self action:@selector(onTap:)];
    //lo anadimos
    [self.view addGestureRecognizer:tap];
}

-(void) onTap: (UITapGestureRecognizer *) tap
{
    if (tap.state == UIGestureRecognizerStateRecognized) {
        CGPoint location = [tap locationInView:self.spaceView];
    
        
        //cambiar la posicion de las vista del xwing
        UIViewAnimationOptions options =
        UIViewAnimationOptionBeginFromCurrentState |
        UIViewAnimationOptionCurveEaseInOut;
        
        [UIView animateWithDuration: 1.9
                              delay:0
                            options:options
                         animations:^{
                                self.xwingView.center = location;
                            }
                         completion:^(BOOL finished) {
                                //
                            }];
        //roacion
        [UIView animateWithDuration:0.7
                              delay:0
                            options:options
                         animations:^{
                             //cambio de transformada
                             self.xwingView.transform = CGAffineTransformMakeRotation(M_2_PI);
                         }
                         completion:^(BOOL finished){
                             //dejamos la transformada como estaba
                             [UIView animateWithDuration:0.7
                                                   delay:0
                                                 options:options
                                              animations:^{
                                                  self.xwingView.transform = CGAffineTransformIdentity;
                                              }
                                              completion:nil];
                             
                         }];        
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
