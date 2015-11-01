//
//  ProteccionViewController.m
//  Morata App
//
//  Created by Dani Gonzalez castillo on 20/07/13.
//  Copyright (c) 2013 Dani Gonzalez castillo. All rights reserved.
//

#import "ProteccionViewController.h"
#import "Annotation.h"


@interface ProteccionViewController ()

@end

@implementation ProteccionViewController
@synthesize mapView;



- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    [mapView setMapType:MKMapTypeStandard];
    [mapView setZoomEnabled:YES];
    [mapView setScrollEnabled:YES];
    [mapView setDelegate:self];
    
    MKCoordinateRegion PoliciaLocal = { {0.0, 0.0} , {0.0, 0.0} };
    PoliciaLocal.center.latitude = 40.22914;
    PoliciaLocal.center.longitude = -3.43819;
    PoliciaLocal.span.longitudeDelta = 0.02f;
    PoliciaLocal.span.latitudeDelta = 0.02f;
    [mapView setRegion:PoliciaLocal animated:YES];
    
    
    Annotation *ann1 = [[Annotation alloc] init];
    ann1.title = @"POLICIA LOCAL ";
    ann1.subtitle = @"Plaza Claudio Vázquez. 91 876 35 87";
    ann1.coordinate = PoliciaLocal.center;
    [mapView addAnnotation: ann1];
    
    
    MKCoordinateRegion ProteccionCivil = { {0.0, 0.0} , {0.0, 0.0} };
    ProteccionCivil.center.latitude = 40.22895;
    ProteccionCivil.center.longitude = -3.43786;
    ProteccionCivil.span.longitudeDelta = 0.02f;
    ProteccionCivil.span.latitudeDelta = 0.02f;
    [mapView setRegion:ProteccionCivil animated:YES];
    
    Annotation *ann2 = [[Annotation alloc] init];
    ann2.title = @"PROTECCION CIVIL";
    ann2.subtitle = @"Plaza Claudio Vázquez,5. 91 873 02 35";
    ann2.coordinate = ProteccionCivil.center;
    [mapView addAnnotation:ann2];
    
    
    MKCoordinateRegion GuardiaCivil = { {0.0, 0.0} , {0.0, 0.0} };
    GuardiaCivil.center.latitude = 40.23246;
    GuardiaCivil.center.longitude = -3.43786;
    GuardiaCivil.span.longitudeDelta = 0.02f;
    GuardiaCivil.span.latitudeDelta = 0.02f;
    [mapView setRegion:GuardiaCivil animated:YES];
    
    Annotation *ann3 = [[Annotation alloc] init];
    ann3.title = @"GUARDIA CIVIL";
    ann3.subtitle = @"Plz Párroco Don Fdez Porras. 91 873 00 22";
    ann3.coordinate = GuardiaCivil.center;
    [mapView addAnnotation:ann3];
    
            
}

-(MKAnnotationView *) mapView:(MKMapView *)mapView viewForAnnotation:(id<MKAnnotation>)annotation {
    MKPinAnnotationView *MyPin=[[MKPinAnnotationView alloc] initWithAnnotation:annotation reuseIdentifier:@"current"];
    MyPin.pinColor = MKPinAnnotationColorRed;
   
    MyPin.draggable = NO;
    MyPin.highlighted = YES;
    MyPin.animatesDrop=TRUE;
    MyPin.canShowCallout = YES;
    
    return MyPin;
    
    
}

-(void)button:(id)sender{
    NSLog(@"Button action");
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
