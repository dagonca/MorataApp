//
//  ViewController.m
//  MorataApp
//
//  Created by Dani Gonzalez castillo on 11/3/15.
//  Copyright (c) 2015 Dani Gonzalez castillo. All rights reserved.
//

#import "ViewController.h"
#import <MessageUI/MessageUI.h>
#import <Parse/Parse.h>
@interface ViewController ()

@end

@implementation ViewController
@synthesize portada,notificacion;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    PFUser *currentUser = [PFUser currentUser];
    PFQuery *query = [PFQuery queryWithClassName:@"Principal"];
    
    PFObject *gameScore = [query getFirstObject];
    PFFile *foto = [gameScore objectForKey:@"imagen"];
    [foto getDataInBackgroundWithBlock:^(NSData *data, NSError *error){
        
        portada.image = [UIImage imageWithData:data];
        
        
    }];
    notificacion.text=[gameScore objectForKey:@"notificacion"];
    
    
    
    
    
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)citaMedico:(id)sender {
    [[UIApplication sharedApplication]
     openURL:[NSURL URLWithString:@"https://www.citaprevia.sanidadmadrid.org/Forms/Acceso.aspx"]];
    
    
}
- (IBAction)contacto:(id)sender {
    
    MFMailComposeViewController *mailcontroller = [[MFMailComposeViewController alloc] init];
    [mailcontroller setMailComposeDelegate:self];
    NSString *email = @"breadetajo@madrid.org";
    NSArray *emailArray = [[NSArray alloc] initWithObjects:email, nil];
    [mailcontroller setToRecipients:emailArray];
    [mailcontroller setSubject:@"Contato app"];
    [self presentViewController:mailcontroller animated:YES completion:nil];
    
    
    
}
- (IBAction)historia:(id)sender {
    
    PFUser *currentUser = [PFUser currentUser];
    PFQuery *query = [PFQuery queryWithClassName:@"Historia"];
    
    PFObject *gameScore = [query getFirstObject];
    PFFile *file = [gameScore objectForKey:@"pdf"];
    NSString *schoolName = [file url];
    
    NSString *teststring = [NSString stringWithFormat:@"%@", schoolName];
    
    [[UIApplication sharedApplication]
     openURL:[NSURL URLWithString:schoolName]];
    
    
    
}
- (IBAction)rutas:(id)sender {
    
    PFUser *currentUser = [PFUser currentUser];
    PFQuery *query = [PFQuery queryWithClassName:@"Rutas"];
    
    PFObject *gameScore = [query getFirstObject];
    PFFile *file = [gameScore objectForKey:@"pdf"];
    NSString *schoolName = [file url];
    
    NSString *teststring = [NSString stringWithFormat:@"%@", schoolName];
    
    [[UIApplication sharedApplication]
     openURL:[NSURL URLWithString:schoolName]];
    
    
}

@end
