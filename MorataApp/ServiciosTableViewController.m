//
//  ServiciosTableViewController.m
//  BreaDeTajo
//
//  Created by Dani Gonzalez castillo on 03/10/14.
//  Copyright (c) 2014 Dani Gonzalez castillo. All rights reserved.
//

#import "ServiciosTableViewController.h"
#import "ServiciosCell.h"
#import <Parse/Parse.h>
#import <MapKit/MapKit.h>

@interface ServiciosTableViewController ()

@end

@implementation ServiciosTableViewController{
    NSArray *nombreArray;
    NSArray *LugarArray;
    NSArray *HorarioArray;
    NSArray *TelefonoArray;
    NSArray *coordenada1Array;
    NSArray *coordenadaArray2;
    
    
}
@synthesize tableView;

- (void)viewDidLoad {
    [super viewDidLoad];
    [self performSelector:@selector(retrieveFromParse)];
    locationManager = [[CLLocationManager alloc] init];
    locationManager.delegate = self;
    locationManager.desiredAccuracy = kCLLocationAccuracyBest;
    
    [locationManager startUpdatingLocation];
    
    if ([locationManager respondsToSelector:@selector(requestWhenInUseAuthorization)]) {
        [locationManager requestWhenInUseAuthorization];
    
    
    }


    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)locationManager:(CLLocationManager *)manager didUpdateToLocation:(CLLocation *)newLocation fromLocation:(CLLocation *)oldLocation
{
  
  
    NSLog(@"didUpdateToLocation: %@", currentLocation);
    currentLocation = newLocation;
    [locationManager stopUpdatingLocation]; //Added to prevent continuous updating as we only needed the location once.
     NSLog(@"latitude: %f longitude: %f", locationManager.location.coordinate.latitude, locationManager.location.coordinate.longitude);
    
}


- (IBAction)atras:(id)sender {
    [self.presentingViewController dismissViewControllerAnimated:YES completion:nil];
}


- (void) retrieveFromParse {
    
    PFQuery *retrieveColors = [PFQuery queryWithClassName:@"Servicios"];
    [retrieveColors orderByDescending:@"createdAt"];
    [retrieveColors findObjectsInBackgroundWithBlock:^(NSArray *objects, NSError *error) {
        if (!error) {
            nombreArray = [[NSArray alloc] initWithArray:objects];
            LugarArray = [[NSArray alloc] initWithArray:objects];
            HorarioArray = [[NSArray alloc] initWithArray:objects];
            TelefonoArray = [[NSArray alloc] initWithArray:objects];
            coordenada1Array = [[NSArray alloc] initWithArray:objects];
            coordenadaArray2 = [[NSArray alloc] initWithArray:objects];

            
        }
        
        [tableView reloadData];
        
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    
    return 1;
    
    
}



//get number of rows by counting number of folders
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return nombreArray.count;
    
    
}

//setup cells in tableView
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    //setup cell
    static NSString *CellIdentifier = @"Cell";
    ServiciosCell  *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    PFObject *tempObjec = [nombreArray objectAtIndex:indexPath.row];
    PFObject *tempObjec2 = [HorarioArray objectAtIndex:indexPath.row];
    PFObject *tempObjec3 = [LugarArray objectAtIndex:indexPath.row];
    PFObject *tempObjec4 = [TelefonoArray objectAtIndex:indexPath.row];
    PFObject *tempObjec5 = [coordenada1Array objectAtIndex:indexPath.row];
    PFObject *tempObjec6 = [coordenadaArray2 objectAtIndex:indexPath.row];
   
    
    cell.cord1.text = [tempObjec5 objectForKey:@"latitud"];
    cell.cord2.text = [tempObjec6 objectForKey:@"longitud"];
    
    cell.nombre.text = [tempObjec objectForKey:@"nombre"];
    cell.horario.text = [tempObjec2 objectForKey:@"horario"];
    cell.lugar.text = [tempObjec3 objectForKey:@"jugar"];
    cell.telefono.text= [tempObjec4 objectForKey:@"telefono"];
    [cell.btntlf setTitle:[tempObjec4 objectForKey:@"telefono"] forState:UIControlStateNormal];
   
    
    return cell;
}






@end
