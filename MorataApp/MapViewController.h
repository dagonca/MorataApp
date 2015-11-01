//
//  ViewController.h
//  Maps
//
//  Created by Dani Gonzalez castillo on 12/07/13.
//  Copyright (c) 2013 Dani Gonzalez castillo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
@interface MapViewController : UIViewController <MKMapViewDelegate> {
    
    IBOutlet MKMapView *mapView;
    
}

@property(nonatomic, retain) IBOutlet MKMapView *mapView;

@end
