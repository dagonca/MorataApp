//
//  ServiciosCell.m
//  MorataApp
//
//  Created by Dani Gonzalez castillo on 11/3/15.
//  Copyright (c) 2015 Dani Gonzalez castillo. All rights reserved.
//

#import "ServiciosCell.h"
#import <MapKit/MapKit.h>

@implementation ServiciosCell

@synthesize nombre,telefono,horario,lugar,btntlf,cord1,cord2;
- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    
    // Configure the view for the selected state
}
- (IBAction)btnLlamar:(id)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:[NSString stringWithFormat:@"tel:%@",btntlf.titleLabel.text]]];
    
}
- (void)locationManager:(CLLocationManager *)manager didUpdateToLocation:(CLLocation *)newLocation fromLocation:(CLLocation *)oldLocation
{
    NSLog(@"didUpdateToLocation: %@", newLocation);
    currentLocation = newLocation;
    //Added to prevent continuous updating as we only needed the location once.
}

- (IBAction)Comollegar:(id)sender {
    
    NSLog(@"HOLAAAAAAA2");
    locationManager = [[CLLocationManager alloc] init];
    locationManager.delegate = self;
    locationManager.desiredAccuracy = kCLLocationAccuracyBest;
    
    [locationManager startUpdatingLocation];
    
    if ([locationManager respondsToSelector:@selector(requestWhenInUseAuthorization)]) {
        [locationManager requestWhenInUseAuthorization];
    }
    [locationManager stopUpdatingLocation];
    ;
    
    
    Class itemClass = [MKMapItem class];
    if (itemClass && [itemClass respondsToSelector:@selector(openMapsWithItems:launchOptions:)]) {
        // iOS 6 MKMapItem available
        NSString *locationQuery = [NSString stringWithFormat:@"http://maps.apple.com/maps?saddr=%f,%f&daddr=%@,%@", locationManager.location.coordinate.latitude, locationManager.location.coordinate.longitude,cord1.text, cord2.text];
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:locationQuery]];
        
        
    }
    
    
}

@end
