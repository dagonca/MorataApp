//
//  InfoNotiTableViewController.m
//  BreaDeTajo
//
//  Created by Dani Gonzalez castillo on 03/10/14.
//  Copyright (c) 2014 Dani Gonzalez castillo. All rights reserved.
//

#import "InfoNotiTableViewController.h"

@interface InfoNotiTableViewController ()

@end

@implementation InfoNotiTableViewController
@synthesize recipedescripcion,recipeevento,recipefecha,fecha,descripcion,evento,Imagen,RecipeImagen;

- (void)viewDidLoad {
    [super viewDidLoad];
    fecha.text=recipefecha;
    evento.text=recipeevento;
    descripcion.text=recipedescripcion;
    Imagen.image=RecipeImagen;
    

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)atras:(id)sender {
    [self.presentingViewController dismissViewControllerAnimated:YES completion:nil];
}

@end
