//
//  ServiciosTableViewController.h
//  BreaDeTajo
//
//  Created by Dani Gonzalez castillo on 03/10/14.
//  Copyright (c) 2014 Dani Gonzalez castillo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>

@interface ServiciosTableViewController : UITableViewController<CLLocationManagerDelegate>{
    CLLocation *currentLocation;
    CLLocationManager *locationManager;
    

    
}
@property (strong, nonatomic) IBOutlet UITableView *tableView;


@end
