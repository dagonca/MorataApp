//
//  SaludViewController.h
//  Morata App
//
//  Created by Dani Gonzalez castillo on 20/07/13.
//  Copyright (c) 2013 Dani Gonzalez castillo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface SaludViewController : UIViewController <MKMapViewDelegate> {
    
    IBOutlet MKMapView *mapView;
    
}


@property(nonatomic, retain) IBOutlet MKMapView *mapView;




@end
