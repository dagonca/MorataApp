//
//  Ruta4ViewController.m
//  Morata App
//
//  Created by Dani Gonzalez castillo on 19/07/13.
//  Copyright (c) 2013 Dani Gonzalez castillo. All rights reserved.
//

#import "Ruta4ViewController.h"

@interface Ruta4ViewController ()

@end

@implementation Ruta4ViewController
@synthesize imageView;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.

    
    UIImage *image =[UIImage imageNamed:@"RutaBatallaJarama.jpg"];
    imageView =[[UIImageView alloc] initWithImage:image];
    
    [self.view addSubview:imageView];
    [(UIScrollView*)self.view setContentSize:[image size]];
    [(UIScrollView*)self.view setMaximumZoomScale:2.0];
    
    
}


- (UIView *)viewForZoomingInScrollView:(UIScrollView*)scrollView{
    return imageView;
}




- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
