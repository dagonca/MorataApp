//
//  AutobusesViewController.m
//  Morata App
//
//  Created by Dani Gonzalez castillo on 20/08/13.
//  Copyright (c) 2013 Dani Gonzalez castillo. All rights reserved.
//

#import "AutobusesViewController.h"

@interface AutobusesViewController ()

@end

@implementation AutobusesViewController
@synthesize imagen1;


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
    UIImage *image =[UIImage imageNamed:@"Madrid-Morata.jpg"];
    imagen1 =[[UIImageView alloc] initWithImage:image];
    
    [self.view addSubview:imagen1];
    [(UIScrollView*)self.view setContentSize:[image size]];
    [(UIScrollView*)self.view setMaximumZoomScale:2.0];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (UIView *)viewForZoomingInScrollView:(UIScrollView*)scrollView{
    return imagen1;
}


@end
