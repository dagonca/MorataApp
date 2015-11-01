//
//  InfoEvenViewController.h
//  BreaDeTajo
//
//  Created by Dani Gonzalez castillo on 01/10/14.
//  Copyright (c) 2014 Dani Gonzalez castillo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface InfoEvenViewController : UIViewController


@property (weak, nonatomic) IBOutlet UITextView *descripcion;

@property (nonatomic, strong) NSString *recipeevento;
@property (weak, nonatomic) IBOutlet UILabel *evento;

@property (nonatomic, strong) NSString *recipedescripcion;
@property (nonatomic, strong) NSString *recipefecha;
@property (weak, nonatomic) IBOutlet UILabel *fecha;

@property (nonatomic, strong) UIImage *RecipeImagen;
@property (retain, nonatomic) IBOutlet UIImageView *Imagen;
@end
