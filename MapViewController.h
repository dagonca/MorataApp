//
//  MapViewController.h
//  MorataApp
//
//  Created by Dani Gonzalez castillo on 11/3/15.
//  Copyright (c) 2015 Dani Gonzalez castillo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
@interface MapViewController : UIViewController <MKMapViewDelegate> {
    
    IBOutlet MKMapView *mapView;
    
}

@property(nonatomic, retain) IBOutlet MKMapView *mapView;

@end
