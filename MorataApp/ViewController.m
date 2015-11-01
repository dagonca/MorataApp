//
//  ViewController.m
//  BreaDeTajo
//
//  Created by Dani Gonzalez castillo on 28/09/13.
//  Copyright (c) 2013 Dani Gonzalez castillo. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()



@end

@implementation ViewController
@synthesize texto,imagen,uno,dos,tres,cuatro,cinco,seis,siete,ocho;




- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    self.uno.layer.cornerRadius=10.0f;
    self.uno.clipsToBounds = YES;
    
    self.dos.layer.cornerRadius=10.0f;
    self.dos.clipsToBounds = YES;
    
    self.tres.layer.cornerRadius=10.0f;
    self.tres.clipsToBounds = YES;
    
    self.cuatro.layer.cornerRadius=10.0f;
    self.cuatro.clipsToBounds = YES;
    
    self.cinco.layer.cornerRadius=10.0f;
    self.cinco.clipsToBounds = YES;
    
    self.seis.layer.cornerRadius=10.0f;
    self.seis.clipsToBounds = YES;
    
    self.ocho.layer.cornerRadius=10.0f;
    self.ocho.clipsToBounds = YES;
    
    self.siete.layer.cornerRadius=10.0f;
    self.siete.clipsToBounds = YES;

    
    PFQuery *query1 = [PFQuery queryWithClassName:@"Principal"];
    [query1 getObjectInBackgroundWithId:@"kf1tsuPy0j" block:^(PFObject *textobject, NSError *error) {
        // Do something with the returned PFObject in the gameScore variable.
        
        PFFile *foto = [textobject objectForKey:@"imagen"];
        
        [foto getDataInBackgroundWithBlock:^(NSData *data, NSError *error){
            if(!error){
                
              imagen.image=[UIImage imageWithData:data];
                
            }
            texto.text=[textobject objectForKey:@"notificacion"];
            
        }];
        
        
    }];
    


	// Do any additional setup after loading the view, typically from a nib.

     }
    

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)Contacto:(id)sender {MFMailComposeViewController *mailcontroller = [[MFMailComposeViewController alloc] init];
    [mailcontroller setMailComposeDelegate:self];
    NSString *email = @"breadetajo@madrid.org";
    NSArray *emailArray = [[NSArray alloc] initWithObjects:email, nil];
    [mailcontroller setToRecipients:emailArray];
    [mailcontroller setSubject:@"Contacto App"];
    [self presentViewController:mailcontroller animated:YES completion:nil];
    
}

-(void)mailComposeController:(MFMailComposeViewController *)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error{
    
    [self dismissViewControllerAnimated:YES completion:nil];
}
- (IBAction)citamedica:(id)sender {
    
    [[UIApplication sharedApplication]
     openURL:[NSURL URLWithString:@"https://www.citaprevia.sanidadmadrid.org/Forms/Acceso.aspx"]];
}

- (IBAction)fiestas:(id)sender {
    
    PFQuery *query1 = [PFQuery queryWithClassName:@"Historia"];
    [query1 getObjectInBackgroundWithId:@"XXJqazFIij" block:^(PFObject *textobject, NSError *error) {
        // Do something with the returned PFObject in the gameScore variable.
      
        PFFile *foto = [textobject objectForKey:@"pdf"];
        
        [foto getDataInBackgroundWithBlock:^(NSData *data, NSError *error){
            if(!error){
             
                NSString *urlPDF = [foto url];
               
                [[UIApplication sharedApplication]
                 openURL:[NSURL URLWithString:[NSString stringWithFormat:@"%@",urlPDF]]];

            }
            
            
        }];
        

    }];
    
    
    
    
}

- (IBAction)Rutas:(id)sender {
    
    PFQuery *query1 = [PFQuery queryWithClassName:@"Rutas"];
    [query1 getObjectInBackgroundWithId:@"cxG1k8g03l" block:^(PFObject *textobject, NSError *error) {
        // Do something with the returned PFObject in the gameScore variable.
        
        PFFile *foto = [textobject objectForKey:@"pdf"];
        
        [foto getDataInBackgroundWithBlock:^(NSData *data, NSError *error){
            if(!error){
                
                NSString *urlPDF = [foto url];
                
                [[UIApplication sharedApplication]
                 openURL:[NSURL URLWithString:[NSString stringWithFormat:@"%@",urlPDF]]];
                
            }
            
            
        }];
        
        
    }];
    
    
    
    
}


@end
