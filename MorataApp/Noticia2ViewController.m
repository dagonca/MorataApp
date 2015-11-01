//
//  Noticia2ViewController.m
//  Morata App
//
//  Created by Dani Gonzalez castillo on 27/08/13.
//  Copyright (c) 2013 Dani Gonzalez castillo. All rights reserved.
//

#import "Noticia2ViewController.h"

@interface Noticia2ViewController ()

@end

@implementation Noticia2ViewController


-(IBAction)link1 {
    [[UIApplication sharedApplication]
     openURL:[NSURL URLWithString:@"http://www.boe.es/boe/dias/2013/08/16/pdfs/BOE-A-2013-9017.pdf "]];
}




- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
