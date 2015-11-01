//
//  ServiciosCell.h
//  MorataApp
//
//  Created by Dani Gonzalez castillo on 11/3/15.
//  Copyright (c) 2015 Dani Gonzalez castillo. All rights reserved.
//


#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>

@interface ServiciosCell : UITableViewCell<CLLocationManagerDelegate>{
    CLLocation *currentLocation;
    CLLocationManager *locationManager;
    
    
    
}

@property (weak, nonatomic) IBOutlet UILabel *nombre;
@property (weak, nonatomic) IBOutlet UILabel *lugar;
@property (weak, nonatomic) IBOutlet UILabel *horario;
@property (weak, nonatomic) IBOutlet UILabel *telefono;
@property (weak, nonatomic) IBOutlet UIButton *btntlf;
@property (weak, nonatomic) IBOutlet UILabel *cord1;
@property (weak, nonatomic) IBOutlet UILabel *cord2;

@end
