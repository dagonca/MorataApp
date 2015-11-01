//
//  MapViewController.m
//  MorataApp
//
//  Created by Dani Gonzalez castillo on 11/3/15.
//  Copyright (c) 2015 Dani Gonzalez castillo. All rights reserved.
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
    Ayuntamiento.center.latitude = 40.228375;
    Ayuntamiento.center.longitude = -3.111197;
    Ayuntamiento.span.longitudeDelta = 0.02f;
    Ayuntamiento.span.latitudeDelta = 0.02f;
    [mapView setRegion:Ayuntamiento animated:YES];
    
    
    Annotation *ann1 = [[Annotation alloc] init];
    ann1.title = @"Centro de dia Pavlo del Pozo";
    ann1.subtitle = @"";
    ann1.coordinate = Ayuntamiento.center;
    [mapView addAnnotation: ann1];
    
    MKCoordinateRegion ServiciosSociales = { {0.0, 0.0} , {0.0, 0.0} };
    ServiciosSociales.center.latitude = 40.228394 ;
    ServiciosSociales.center.longitude = -3.113042;
    ServiciosSociales.span.longitudeDelta = 0.02f;
    ServiciosSociales.span.latitudeDelta = 0.02f;
    [mapView setRegion:ServiciosSociales animated:YES];
    
    Annotation *ann2 = [[Annotation alloc] init];
    ann2.title = @"Helisuperficie sanitaria";
    ann2.subtitle = @"";
    ann2.coordinate = ServiciosSociales.center;
    [mapView addAnnotation:ann2];
    
    
    MKCoordinateRegion Polideportivo = { {0.0, 0.0} , {0.0, 0.0} };
    Polideportivo.center.latitude = 40.228356;
    Polideportivo.center.longitude = -3.11312;
    Polideportivo.span.longitudeDelta = 0.02f;
    Polideportivo.span.latitudeDelta = 0.02f;
    [mapView setRegion:Polideportivo animated:YES];
    
    Annotation *ann3 = [[Annotation alloc] init];
    ann3.title = @"Helisuperficie sanitaria ";
    ann3.subtitle = @"";
    ann3.coordinate = Polideportivo.center;
    [mapView addAnnotation:ann3];
    
    
    
    MKCoordinateRegion ColegioPublico = { {0.0, 0.0} , {0.0, 0.0} };
    ColegioPublico.center.latitude = 40.228525;
    ColegioPublico.center.longitude = -3.111608;
    ColegioPublico.span.longitudeDelta = 0.02f;
    ColegioPublico.span.latitudeDelta = 0.02f;
    [mapView setRegion:ColegioPublico animated:YES];
    
    Annotation *ann4 = [[Annotation alloc] init];
    ann4.title = @"Colefio C.R.A Los Olivos";
    ann4.subtitle = @"";
    ann4.coordinate = ColegioPublico.center;
    [mapView addAnnotation:ann4];
    
    
    MKCoordinateRegion Instituto = { {0.0, 0.0} , {0.0, 0.0} };
    Instituto.center.latitude = 40.228419;
    Instituto.center.longitude = -3.111900;
    Instituto.span.longitudeDelta = 0.02f;
    Instituto.span.latitudeDelta = 0.02f;
    [mapView setRegion:Instituto animated:YES];
    
    Annotation *ann5 = [[Annotation alloc] init];
    ann5.title = @"Casita de niños ";
    ann5.subtitle = @"";
    ann5.coordinate = Instituto.center;
    [mapView addAnnotation:ann5];
    
    
    
    MKCoordinateRegion Juzgado = { {0.0, 0.0} , {0.0, 0.0} };
    Juzgado.center.latitude = 40.228522;
    Juzgado.center.longitude = -3.112972;
    Juzgado.span.longitudeDelta = 0.02f;
    Juzgado.span.latitudeDelta = 0.02f;
    [mapView setRegion:Juzgado animated:YES];
    
    Annotation *ann6 = [[Annotation alloc] init];
    ann6.title = @"Piscina Municipal";
    ann6.subtitle = @"";
    ann6.coordinate = Juzgado.center;
    [mapView addAnnotation:ann6];
    
    
    
    MKCoordinateRegion PuntoLimpio = { {0.0, 0.0} , {0.0, 0.0} };
    PuntoLimpio.center.latitude = 40.225892;
    PuntoLimpio.center.longitude = -3.109322;
    PuntoLimpio.span.longitudeDelta = 0.02f;
    PuntoLimpio.span.latitudeDelta = 0.02f;
    [mapView setRegion:PuntoLimpio animated:YES];
    
    Annotation *ann7 = [[Annotation alloc] init];
    ann7.title = @"Museo Oleico ";
    ann7.subtitle = @"";
    ann7.coordinate = PuntoLimpio.center;
    [mapView addAnnotation:ann7];
    
    MKCoordinateRegion CasaJuventud = { {0.0, 0.0} , {0.0, 0.0} };
    CasaJuventud .center.latitude = 40.228104;
    CasaJuventud .center.longitude = -3.108683;
    CasaJuventud .span.longitudeDelta = 0.02f;
    CasaJuventud .span.latitudeDelta = 0.02f;
    [mapView setRegion:CasaJuventud  animated:YES];
    
    Annotation *ann8 = [[Annotation alloc] init];
    ann8.title = @"Plaza de Toros ";
    ann8.subtitle = @"";
    ann8.coordinate = CasaJuventud .center;
    [mapView addAnnotation:ann8];
    
    MKCoordinateRegion CasaCultura = { {0.0, 0.0} , {0.0, 0.0} };
    CasaCultura .center.latitude = 40.228245;
    CasaCultura .center.longitude = -3.108246;
    CasaCultura .span.longitudeDelta = 0.02f;
    CasaCultura .span.latitudeDelta = 0.02f;
    [mapView setRegion:CasaCultura  animated:YES];
    
    
    Annotation *ann9 = [[Annotation alloc] init];
    ann9.title = @"Parque Mirador del Sur ";
    ann9.subtitle = @"";
    ann9.coordinate = CasaCultura .center;
    [mapView addAnnotation:ann9];
    
    MKCoordinateRegion CentroMayores = { {0.0, 0.0} , {0.0, 0.0} };
    CentroMayores .center.latitude = 40.230576;
    CentroMayores .center.longitude = -3.108021;
    CentroMayores .span.longitudeDelta = 0.02f;
    CentroMayores .span.latitudeDelta = 0.02f;
    [mapView setRegion:CentroMayores  animated:YES];
    
    Annotation *ann10 = [[Annotation alloc] init];
    ann10.title = @"Parque El charco ";
    ann10.subtitle = @"";
    ann10.coordinate = CentroMayores .center;
    [mapView addAnnotation:ann10];
    
    
    MKCoordinateRegion FutbolPiscina = { {0.0, 0.0} , {0.0, 0.0} };
    FutbolPiscina .center.latitude = 40.228585;
    FutbolPiscina .center.longitude = -3.114812;
    FutbolPiscina .span.longitudeDelta = 0.02f;
    FutbolPiscina .span.latitudeDelta = 0.02f;
    [mapView setRegion:FutbolPiscina  animated:YES];
    
    Annotation *ann11 = [[Annotation alloc] init];
    ann11.title = @"Parque forestal La Dehesa ";
    ann11.subtitle = @"";
    ann11.coordinate = FutbolPiscina .center;
    [mapView addAnnotation:ann11];
    
    MKCoordinateRegion ConsultorioMedico = { {0.0, 0.0} , {0.0, 0.0} };
    ConsultorioMedico.center.latitude = 40.229955;
    ConsultorioMedico.center.longitude = -3.112168;
    ConsultorioMedico.span.longitudeDelta = 0.02f;
    ConsultorioMedico.span.latitudeDelta = 0.02f;
    [mapView setRegion:ConsultorioMedico animated:YES];
    
    
    Annotation *an1 = [[Annotation alloc] init];
    an1.title = @"Campo de Futbol ";
    an1.subtitle = @"";
    an1.coordinate = ConsultorioMedico.center;
    [mapView addAnnotation: ann1];
    
    
    MKCoordinateRegion Urgencias = { {0.0, 0.0} , {0.0, 0.0} };
    Urgencias.center.latitude =  40.230011;
    Urgencias.center.longitude = -3.107455;
    Urgencias.span.longitudeDelta = 0.02f;
    Urgencias.span.latitudeDelta = 0.02f;
    [mapView setRegion:Urgencias animated:YES];
    
    Annotation *an2 = [[Annotation alloc] init];
    an2.title = @"Iglesia Asunción de Nuestra Señora ";
    an2.subtitle = @"";
    an2.coordinate = Urgencias.center;
    [mapView addAnnotation:ann2];
    
    
    MKCoordinateRegion Farmacia1 = { {0.0, 0.0} , {0.0, 0.0} };
    Farmacia1.center.latitude = 40.226217;
    Farmacia1.center.longitude = -3.112911;
    Farmacia1.span.longitudeDelta = 0.02f;
    Farmacia1.span.latitudeDelta = 0.02f;
    [mapView setRegion:Farmacia1 animated:YES];
    
    Annotation *an3 = [[Annotation alloc] init];
    an3.title = @"Polideportivo Municipal";
    an3.subtitle = @"";
    an3.coordinate = Farmacia1.center;
    [mapView addAnnotation:ann3];
    
    
    
    MKCoordinateRegion Farmacia2 = { {0.0, 0.0} , {0.0, 0.0} };
    Farmacia2.center.latitude = 40.233463;
    Farmacia2.center.longitude = -3.105851;
    Farmacia2.span.longitudeDelta = 0.02f;
    Farmacia2.span.latitudeDelta = 0.02f;
    [mapView setRegion:Farmacia2 animated:YES];
    
    Annotation *an4 = [[Annotation alloc] init];
    an4.title = @"Tanatorio Municipal y Cementerio ";
    an4.subtitle = @"";
    an4.coordinate = Farmacia2.center;
    [mapView addAnnotation:ann4];
    
    MKCoordinateRegion PoliciaLocal = { {0.0, 0.0} , {0.0, 0.0} };
    PoliciaLocal.center.latitude = 40.231544;
    PoliciaLocal.center.longitude = -3.105388;
    PoliciaLocal.span.longitudeDelta = 0.02f;
    PoliciaLocal.span.latitudeDelta = 0.02f;
    [mapView setRegion:PoliciaLocal animated:YES];
    
    
    Annotation *nn1 = [[Annotation alloc] init];
    nn1.title = @"Ermita de San Isidro ";
    nn1.subtitle = @"";
    nn1.coordinate = PoliciaLocal.center;
    [mapView addAnnotation: ann1];
    
    
    MKCoordinateRegion ProteccionCivil = { {0.0, 0.0} , {0.0, 0.0} };
    ProteccionCivil.center.latitude = 40.228014;
    ProteccionCivil.center.longitude = -3.105388;
    ProteccionCivil.span.longitudeDelta = 0.02f;
    ProteccionCivil.span.latitudeDelta = 0.02f;
    [mapView setRegion:ProteccionCivil animated:YES];
    
    Annotation *nn2 = [[Annotation alloc] init];
    nn2.title = @"Ermita de San Roque ";
    nn2.subtitle = @"";
    nn2.coordinate = ProteccionCivil.center;
    [mapView addAnnotation:nn2];
    
    
    MKCoordinateRegion GuardiaCivil = { {0.0, 0.0} , {0.0, 0.0} };
    GuardiaCivil.center.latitude = 40.230521;
    GuardiaCivil.center.longitude = -3.113446;
    GuardiaCivil.span.longitudeDelta = 0.02f;
    GuardiaCivil.span.latitudeDelta = 0.02f;
    [mapView setRegion:GuardiaCivil animated:YES];
    
    Annotation *nn3 = [[Annotation alloc] init];
    nn3.title = @"Bascula municipal ";
    nn3.subtitle = @"";
    nn3.coordinate = GuardiaCivil.center;
    [mapView addAnnotation:nn3];
    
    
    MKCoordinateRegion aa = { {0.0, 0.0} , {0.0, 0.0} };
    aa.center.latitude = 40.230039;
    aa.center.longitude = -3.109550;
    aa.span.longitudeDelta = 0.02f;
    aa.span.latitudeDelta = 0.02f;
    [mapView setRegion:aa animated:YES];
    
    Annotation *nna = [[Annotation alloc] init];
    nna.title = @"Ayuntamiento";
    nna.subtitle = @"";
    nna.coordinate = aa.center;
    [mapView addAnnotation:nna];
    
    
    MKCoordinateRegion a1 = { {0.0, 0.0} , {0.0, 0.0} };
    a1.center.latitude = 40.230039;
    a1.center.longitude = -3.109550;
    a1.span.longitudeDelta = 0.02f;
    a1.span.latitudeDelta = 0.02f;
    [mapView setRegion:a1 animated:YES];
    
    Annotation *ab = [[Annotation alloc] init];
    ab.title = @"Centro de actividades";
    ab.subtitle = @"Juan Carlos I";
    ab.coordinate = a1.center;
    [mapView addAnnotation:ab];
    
    
    
    MKCoordinateRegion a2 = { {0.0, 0.0} , {0.0, 0.0} };
    a2.center.latitude = 40.228425;
    a2.center.longitude = -3.112669;
    a2.span.longitudeDelta = 0.02f;
    a2.span.latitudeDelta = 0.02f;
    [mapView setRegion:a2 animated:YES];
    
    Annotation *nnb = [[Annotation alloc] init];
    nnb.title = @"Consultorio Medico";
    nnb.subtitle = @"";
    nnb.coordinate = a2.center;
    [mapView addAnnotation:nnb];
    
    
    
    MKCoordinateRegion as = { {0.0, 0.0} , {0.0, 0.0} };
    as.center.latitude = 40.228494;
    as.center.longitude = -3.112750;
    as.span.longitudeDelta = 0.02f;
    as.span.latitudeDelta = 0.02f;
    [mapView setRegion:as animated:YES];
    
    Annotation *v2 = [[Annotation alloc] init];
    v2.title = @"Gimnasio/Bibioteca";
    v2.subtitle = @"Salas de actividades";
    v2.coordinate = as.center;
    [mapView addAnnotation:v2];
    
    
    
    MKCoordinateRegion ass = { {0.0, 0.0} , {0.0, 0.0} };
    ass.center.latitude = 40.233117;
    ass.center.longitude = -3.098794;
    ass.span.longitudeDelta = 0.02f;
    ass.span.latitudeDelta = 0.02f;
    [mapView setRegion:ass animated:YES];
    
    Annotation *dd = [[Annotation alloc] init];
    dd.title = @"Urbanizacion 'La Alameda'";
    dd.subtitle = @"";
    dd.coordinate = ass.center;
    [mapView addAnnotation:dd];
    
    
    
    MKCoordinateRegion er = { {0.0, 0.0} , {0.0, 0.0} };
    er.center.latitude = 40.235033;
    er.center.longitude = -3.091247;
    er.span.longitudeDelta = 0.02f;
    er.span.latitudeDelta = 0.02f;
    [mapView setRegion:er animated:YES];
    
    Annotation *sf = [[Annotation alloc] init];
    sf.title = @"Urbanizacion 'El Quejical'";
    sf.subtitle = @"";
    sf.coordinate = er.center;
    [mapView addAnnotation:sf];
    
    
    
    MKCoordinateRegion qw = { {0.0, 0.0} , {0.0, 0.0} };
    qw.center.latitude = 40.230175;
    qw.center.longitude = -3.108342;
    qw.span.longitudeDelta = 0.02f;
    qw.span.latitudeDelta = 0.02f;
    [mapView setRegion:qw animated:YES];
    
    Annotation *na = [[Annotation alloc] init];
    na.title = @"Bar Ropero";
    na.subtitle = @"";
    na.coordinate = qw.center;
    [mapView addAnnotation:na];
    
    
    
    MKCoordinateRegion fd = { {0.0, 0.0} , {0.0, 0.0} };
    fd.center.latitude = 40.230625;
    fd.center.longitude = -3.108894;
    fd.span.longitudeDelta = 0.02f;
    fd.span.latitudeDelta = 0.02f;
    [mapView setRegion:fd animated:YES];
    
    Annotation *dna = [[Annotation alloc] init];
    dna.title = @"Bar Buda";
    dna.subtitle = @"";
    dna.coordinate = fd.center;
    [mapView addAnnotation:dna];
    
    
    
    MKCoordinateRegion we = { {0.0, 0.0} , {0.0, 0.0} };
    we.center.latitude = 40.230150;
    we.center.longitude = -3.109158;
    we.span.longitudeDelta = 0.02f;
    we.span.latitudeDelta = 0.02f;
    [mapView setRegion:we animated:YES];
    
    Annotation *fg = [[Annotation alloc] init];
    fg.title = @"Bar Plaza";
    fg.subtitle = @"";
    fg.coordinate = we.center;
    [mapView addAnnotation:fg];
    
    
    
    MKCoordinateRegion ud = { {0.0, 0.0} , {0.0, 0.0} };
    ud.center.latitude = 40.229772;
    ud.center.longitude = -3.109456;
    ud.span.longitudeDelta = 0.02f;
    ud.span.latitudeDelta = 0.02f;
    [mapView setRegion:ud animated:YES];
    
    Annotation *sds = [[Annotation alloc] init];
    sds.title = @"Bar Posito";
    sds.subtitle = @"";
    sds.coordinate = ud.center;
    [mapView addAnnotation:sds];
    
    
    
    MKCoordinateRegion gf = { {0.0, 0.0} , {0.0, 0.0} };
    gf.center.latitude = 40.229778;
    gf.center.longitude = -3.109175;
    gf.span.longitudeDelta = 0.02f;
    gf.span.latitudeDelta = 0.02f;
    [mapView setRegion:gf animated:YES];
    
    Annotation *dsd = [[Annotation alloc] init];
    dsd.title = @"Restaurante 'El campanario'";
    dsd.subtitle = @"";
    dsd.coordinate = gf.center;
    [mapView addAnnotation:dsd];
    
    
    
    
    MKCoordinateRegion vf = { {0.0, 0.0} , {0.0, 0.0} };
    vf.center.latitude = 40.229281;
    vf.center.longitude = -3.110714;
    vf.span.longitudeDelta = 0.02f;
    vf.span.latitudeDelta = 0.02f;
    [mapView setRegion:vf animated:YES];
    
    Annotation *sde = [[Annotation alloc] init];
    sde.title = @"Bar Los Escudos";
    sde.subtitle = @"";
    sde.coordinate = vf.center;
    [mapView addAnnotation:sde];
    
    
    
    
}
- (IBAction)atras:(id)sender {
    [self.presentingViewController dismissViewControllerAnimated:YES completion:nil];
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
