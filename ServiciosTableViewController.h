//
//  ServiciosTableViewController.h
//  MorataApp
//
//  Created by Dani Gonzalez castillo on 11/3/15.
//  Copyright (c) 2015 Dani Gonzalez castillo. All rights reserved.
//


#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>

@interface ServiciosTableViewController : UITableViewController<CLLocationManagerDelegate>{
    CLLocation *currentLocation;
    CLLocationManager *locationManager;
    
    
    
}
@property (strong, nonatomic) IBOutlet UITableView *tableView;


@end
