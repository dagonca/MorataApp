//
//  EnlacesViewController.m
//  Morata de Tajuña
//
//  Created by Dani Gonzalez castillo on 15/07/13.
//  Copyright (c) 2013 Dani Gonzalez castillo. All rights reserved.
//

#import "EnlacesViewController.h"

@interface EnlacesViewController ()

@end

@implementation EnlacesViewController

-(IBAction)link1 {
    [[UIApplication sharedApplication]
     openURL:[NSURL URLWithString:@"http://www.ayuntamientodemorata.es/moratadetajuna/opencms/site/web/portada/?comboIdiomas=null"]];
}

-(IBAction)link2 {
    [[UIApplication sharedApplication]
     openURL:[NSURL URLWithString:@"https://www.facebook.com/pages/Ayuntamiento-de-Morata-de-Taju%C3%B1a/132388850134057?ref=hl"]];
}
-(IBAction)link3 {
    [[UIApplication sharedApplication]
     openURL:[NSURL URLWithString:@"https://twitter.com/Ayto_Morata"]];
}
-(IBAction)link4 {
    [[UIApplication sharedApplication]
     openURL:[NSURL URLWithString:@"http://www.ayuntamientodemorata.es/moratadetajuna/opencms/system/galleries/download/Adjuntos/GUIA_DE_MORATA_DE_TAJUNYA.pdf?comboIdiomas=spanish"]];
}

-(IBAction)link5 {
    [[UIApplication sharedApplication]
     openURL:[NSURL URLWithString:@"http://www.toplay.es/centros-deportivos/?centro=morata&comboIdiomas=spanish"]];
}






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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
