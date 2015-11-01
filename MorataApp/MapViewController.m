//
//  ViewController.m
//  Maps
//
//  Created by Dani Gonzalez castillo on 12/07/13.
//  Copyright (c) 2013 Dani Gonzalez castillo. All rights reserved.
//

#import "MapViewController.h"
#import "Annotation.h"

@interface MapViewController ()

@end

@implementation MapViewController
@synthesize mapView;



- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [mapView setMapType:MKMapTypeStandard];
    [mapView setZoomEnabled:YES];
    [mapView setScrollEnabled:YES];
    [mapView setDelegate:self];
    
    MKCoordinateRegion Ayuntamiento = { {0.0, 0.0} , {0.0, 0.0} };
    Ayuntamiento.center.latitude = 40.22958;
    Ayuntamiento.center.longitude = -3.43836;
    Ayuntamiento.span.longitudeDelta = 0.02f;
    Ayuntamiento.span.latitudeDelta = 0.02f;
    [mapView setRegion:Ayuntamiento animated:YES];
    
    
    Annotation *ann1 = [[Annotation alloc] init];
    ann1.title = @"AYUNTAMIENTO";
    ann1.subtitle = @"Plaza Mayor,1. 91 873 03 80";
    ann1.coordinate = Ayuntamiento.center;
    [mapView addAnnotation: ann1];
    
    
    MKCoordinateRegion ServiciosSociales = { {0.0, 0.0} , {0.0, 0.0} };
    ServiciosSociales.center.latitude = 40.22909 ;
    ServiciosSociales.center.longitude = -3.43836;
    ServiciosSociales.span.longitudeDelta = 0.02f;
    ServiciosSociales.span.latitudeDelta = 0.02f;
    [mapView setRegion:ServiciosSociales animated:YES];
    
    Annotation *ann2 = [[Annotation alloc] init];
    ann2.title = @"Servicios Sociales";
    ann2.subtitle = @"C/ Manuel Mac-Crohon. 91 876 35 78";
    ann2.coordinate = ServiciosSociales.center;
    [mapView addAnnotation:ann2];
 
    
    MKCoordinateRegion Polideportivo = { {0.0, 0.0} , {0.0, 0.0} };
    Polideportivo.center.latitude = 40.23020;
    Polideportivo.center.longitude = -3.44113;
    Polideportivo.span.longitudeDelta = 0.02f;
    Polideportivo.span.latitudeDelta = 0.02f;
    [mapView setRegion:Polideportivo animated:YES];
    
    Annotation *ann3 = [[Annotation alloc] init];
    ann3.title = @"Polideportivo";
    ann3.subtitle = @"C/ Don Juan Carlos I, 62. 91 873 94 57 ";
    ann3.coordinate = Polideportivo.center;
    [mapView addAnnotation:ann3];
    
    
    
    MKCoordinateRegion ColegioPublico = { {0.0, 0.0} , {0.0, 0.0} };
    ColegioPublico.center.latitude = 40.23116;
    ColegioPublico.center.longitude = -3.44133;
    ColegioPublico.span.longitudeDelta = 0.02f;
    ColegioPublico.span.latitudeDelta = 0.02f;
    [mapView setRegion:ColegioPublico animated:YES];
    
    Annotation *ann4 = [[Annotation alloc] init];
    ann4.title = @"COLEGIO PUBLICO CLAUDIO VAZQUEZ";
    ann4.subtitle = @"Calle Grupo Escolar. 91 873 90 83";
    ann4.coordinate = ColegioPublico.center;
    [mapView addAnnotation:ann4];

    
    MKCoordinateRegion Instituto = { {0.0, 0.0} , {0.0, 0.0} };
    Instituto.center.latitude = 40.22760;
    Instituto.center.longitude = -3.44311;
    Instituto.span.longitudeDelta = 0.02f;
    Instituto.span.latitudeDelta = 0.02f;
    [mapView setRegion:Instituto animated:YES];
    
    Annotation *ann5 = [[Annotation alloc] init];
    ann5.title = @"INSTITUTO ANSELMO LORENZO";
    ann5.subtitle = @"c/ Doctor Sanchez Perez.";
    ann5.coordinate = Instituto.center;
    [mapView addAnnotation:ann5];
    

    
    MKCoordinateRegion Juzgado = { {0.0, 0.0} , {0.0, 0.0} };
    Juzgado.center.latitude = 40.22961;
    Juzgado.center.longitude = -3.43744;
    Juzgado.span.longitudeDelta = 0.02f;
    Juzgado.span.latitudeDelta = 0.02f;
    [mapView setRegion:Juzgado animated:YES];
    
    Annotation *ann6 = [[Annotation alloc] init];
    ann6.title = @"JUZGADO DE PAZ";
    ann6.subtitle = @"Avda de la Constitución,1. 91 873 03 36 ";
    ann6.coordinate = Juzgado.center;
    [mapView addAnnotation:ann6];
    

    
    MKCoordinateRegion PuntoLimpio = { {0.0, 0.0} , {0.0, 0.0} };
    PuntoLimpio.center.latitude = 40.23543;
    PuntoLimpio.center.longitude = -3.43466;
    PuntoLimpio.span.longitudeDelta = 0.02f;
    PuntoLimpio.span.latitudeDelta = 0.02f;
    [mapView setRegion:PuntoLimpio animated:YES];
    
    Annotation *ann7 = [[Annotation alloc] init];
    ann7.title = @"PUNTO LIMPIO";
    ann7.subtitle = @"Calle Fraile s/n";
    ann7.coordinate = PuntoLimpio.center;
    [mapView addAnnotation:ann7];
    
    MKCoordinateRegion CasaJuventud = { {0.0, 0.0} , {0.0, 0.0} };
    CasaJuventud .center.latitude = 40.22609;
    CasaJuventud .center.longitude = -3.43749;
    CasaJuventud .span.longitudeDelta = 0.02f;
    CasaJuventud .span.latitudeDelta = 0.02f;
    [mapView setRegion:CasaJuventud  animated:YES];
    
    Annotation *ann8 = [[Annotation alloc] init];
    ann8.title = @"CASA DE LA JUVENTUD ";
    ann8.subtitle = @"C/ Manuel Mac-Crohon,62. 91 873 08 64 ";
    ann8.coordinate = CasaJuventud .center;
    [mapView addAnnotation:ann8];

    MKCoordinateRegion CasaCultura = { {0.0, 0.0} , {0.0, 0.0} };
    CasaCultura .center.latitude = 40.23145;
    CasaCultura .center.longitude = -3.44038;
    CasaCultura .span.longitudeDelta = 0.02f;
    CasaCultura .span.latitudeDelta = 0.02f;
    [mapView setRegion:CasaCultura  animated:YES];
    
    Annotation *ann9 = [[Annotation alloc] init];
    ann9.title = @"CASA DE LA CULTURA";
    ann9.subtitle = @"Calle Tarayuela,1. 91 873 07 76";
    ann9.coordinate = CasaCultura .center;
    [mapView addAnnotation:ann9];

    MKCoordinateRegion CentroMayores = { {0.0, 0.0} , {0.0, 0.0} };
    CentroMayores .center.latitude = 40.23145;
    CentroMayores .center.longitude = -3.44038;
    CentroMayores .span.longitudeDelta = 0.02f;
    CentroMayores .span.latitudeDelta = 0.02f;
    [mapView setRegion:CentroMayores  animated:YES];
    
    Annotation *ann10 = [[Annotation alloc] init];
    ann10.title = @"CENTRO MAYORES";
    ann10.subtitle = @"Plaza Claudio Vázquez. 91 873 10 43";
    ann10.coordinate = CentroMayores .center;
    [mapView addAnnotation:ann10];
    
    
    MKCoordinateRegion FutbolPiscina = { {0.0, 0.0} , {0.0, 0.0} };
    FutbolPiscina .center.latitude = 40.23759;
    FutbolPiscina .center.longitude = -3.43489;
    FutbolPiscina .span.longitudeDelta = 0.02f;
    FutbolPiscina .span.latitudeDelta = 0.02f;
    [mapView setRegion:FutbolPiscina  animated:YES];
    
    Annotation *ann11 = [[Annotation alloc] init];
    ann11.title = @"CAMPO DE FUTBOL y PISCINA MUNICIPAL";
    ann11.subtitle = @"Calle Bosque. ";
    ann11.coordinate = FutbolPiscina .center;
    [mapView addAnnotation:ann11];
    
}

-(MKAnnotationView *) mapView:(MKMapView *)mapView viewForAnnotation:(id<MKAnnotation>)annotation {
    MKPinAnnotationView *MyPin=[[MKPinAnnotationView alloc] initWithAnnotation:annotation reuseIdentifier:@"current"];
    MyPin.pinColor = MKPinAnnotationColorRed;
    
    //UIButton *advertButton = [UIButton buttonWithType:UIButtonTypeDetailDisclosure];
    //[advertButton addTarget:self action:@selector(button:)forControlEvents:UIControlEventTouchUpInside];
    //MyPin.rightCalloutAccessoryView = advertButton;
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
