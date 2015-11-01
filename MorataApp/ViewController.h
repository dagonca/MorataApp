//
//  ViewController.h
//  BreaDeTajo
//
//  Created by Dani Gonzalez castillo on 28/09/13.
//  Copyright (c) 2013 Dani Gonzalez castillo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Parse/Parse.h>
#import <MessageUI/MessageUI.h>
@interface ViewController : UIViewController<MFMessageComposeViewControllerDelegate>

@property (weak, nonatomic) IBOutlet UILabel *texto;
@property (weak, nonatomic) IBOutlet UIImageView *imagen;

@property (weak, nonatomic) IBOutlet UIView *uno;
@property (weak, nonatomic) IBOutlet UIView *dos;
@property (weak, nonatomic) IBOutlet UIView *tres;
@property (weak, nonatomic) IBOutlet UIView *cuatro;

@property (weak, nonatomic) IBOutlet UIView *cinco;
@property (weak, nonatomic) IBOutlet UIView *seis;
@property (weak, nonatomic) IBOutlet UIView *siete;
@property (weak, nonatomic) IBOutlet UIView *ocho;


@end
