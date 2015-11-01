//
//  InfoEvenViewController.h
//  MorataApp
//
//  Created by Dani Gonzalez castillo on 11/3/15.
//  Copyright (c) 2015 Dani Gonzalez castillo. All rights reserved.
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
