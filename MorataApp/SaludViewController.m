//
//  SaludViewController.m
//  Morata App
//
//  Created by Dani Gonzalez castillo on 20/07/13.
//  Copyright (c) 2013 Dani Gonzalez castillo. All rights reserved.
//

#import "SaludViewController.h"
#import "Annotation.h"

@interface SaludViewController ()

@end

@implementation SaludViewController
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
    
    MKCoordinateRegion ConsultorioMedico = { {0.0, 0.0} , {0.0, 0.0} };
    ConsultorioMedico.center.latitude = 40.23012;
    ConsultorioMedico.center.longitude = -3.43383;
    ConsultorioMedico.span.longitudeDelta = 0.02f;
    ConsultorioMedico.span.latitudeDelta = 0.02f;
    [mapView setRegion:ConsultorioMedico animated:YES];
    
    
    Annotation *ann1 = [[Annotation alloc] init];
    ann1.title = @"CONSULTORIO MEDICO ";
    ann1.subtitle = @"Calle Clínica, 2. 91 873 13 26";
    ann1.coordinate = ConsultorioMedico.center;
    [mapView addAnnotation: ann1];
    
    
    MKCoordinateRegion Urgencias = { {0.0, 0.0} , {0.0, 0.0} };
    Urgencias.center.latitude = 40.23007 ;
    Urgencias.center.longitude = -3.43388;
    Urgencias.span.longitudeDelta = 0.02f;
    Urgencias.span.latitudeDelta = 0.02f;
    [mapView setRegion:Urgencias animated:YES];
    
    Annotation *ann2 = [[Annotation alloc] init];
    ann2.title = @"SERVICIOS DE URGENCIAS MEDICAS";
    ann2.subtitle = @"Plaza Don Santiago, 9. 91 876 36 63";
    ann2.coordinate = Urgencias.center;
    [mapView addAnnotation:ann2];
    
    
    MKCoordinateRegion Farmacia1 = { {0.0, 0.0} , {0.0, 0.0} };
    Farmacia1.center.latitude = 40.22869;
    Farmacia1.center.longitude = -3.43730;
    Farmacia1.span.longitudeDelta = 0.02f;
    Farmacia1.span.latitudeDelta = 0.02f;
    [mapView setRegion:Farmacia1 animated:YES];
    
    Annotation *ann3 = [[Annotation alloc] init];
    ann3.title = @"FARMACIA";
    ann3.subtitle = @"Calle Domingo Rodelgo. 91 873 00 13";
    ann3.coordinate = Farmacia1.center;
    [mapView addAnnotation:ann3];
    
    
    
    MKCoordinateRegion Farmacia2 = { {0.0, 0.0} , {0.0, 0.0} };
    Farmacia2.center.latitude = 40.23192;
    Farmacia2.center.longitude = -3.43506;
    Farmacia2.span.longitudeDelta = 0.02f;
    Farmacia2.span.latitudeDelta = 0.02f;
    [mapView setRegion:Farmacia2 animated:YES];
    
    Annotation *ann4 = [[Annotation alloc] init];
    ann4.title = @"FARMACIA";
    ann4.subtitle = @"Calle Morería, 56. 91 873 12 69";
    ann4.coordinate = Farmacia2.center;
    [mapView addAnnotation:ann4];
    
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
