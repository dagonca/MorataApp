//
//  Ruta2ViewController.m
//  Morata App
//
//  Created by Dani Gonzalez castillo on 18/07/13.
//  Copyright (c) 2013 Dani Gonzalez castillo. All rights reserved.
//

#import "Ruta2ViewController.h"

@interface Ruta2ViewController ()

@end

@implementation Ruta2ViewController
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
    UIImage *image =[UIImage imageNamed:@"RutaVega.jpg"];
    imageView =[[UIImageView alloc] initWithImage:image];
    
    [self.view addSubview:imageView];
    [(UIScrollView*)self.view setContentSize:[image size]];
    [(UIScrollView*)self.view setMaximumZoomScale:3.0];
    
    

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
