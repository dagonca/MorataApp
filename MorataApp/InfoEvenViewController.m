//
//  InfoEvenViewController.m
//  BreaDeTajo
//
//  Created by Dani Gonzalez castillo on 01/10/14.
//  Copyright (c) 2014 Dani Gonzalez castillo. All rights reserved.
//

#import "InfoEvenViewController.h"

@interface InfoEvenViewController ()

@end

@implementation InfoEvenViewController
@synthesize recipedescripcion,recipeevento,recipefecha,fecha,descripcion,evento,Imagen,RecipeImagen;

- (void)viewDidLoad {
    [super viewDidLoad];
    fecha.text=recipefecha;
    evento.text=recipeevento;
    descripcion.text=recipedescripcion;
    Imagen.image=RecipeImagen;
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)atras:(id)sender {
    [self.presentingViewController dismissViewControllerAnimated:YES completion:nil];
}


@end
