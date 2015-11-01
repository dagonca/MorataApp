//
//  ServiciosViewController.m
//  MorataApp
//
//  Created by Dani Gonzalez castillo on 26/09/13.
//  Copyright (c) 2013 Dani Gonzalez castillo. All rights reserved.
//

#import "ServiciosViewController.h"
#import "CustomCell.h"

@interface ServiciosViewController ()
{
    NSArray *Titulo;
    NSArray *Subtitulo1;
    NSArray *Subtitulo2;
}


@end

@implementation ServiciosViewController



- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    Titulo =[[NSArray alloc] initWithObjects:@"Ayuntamiento",@"Casa de la Cultura",@"Casa de la Juventud",@"Casa de los Niños I",@"Colegio Público",@"Consultorio Ricardo Romero",@"Emergencias Sanitarias",@"Farmacia",@"Farmacia",@"Guardia Civil",@"Hospital de Sureste",@"Juzgado de Paz",@"Piscina Municipal",@"Policía Local",@"Polideportivo",@"Protección Civil",@"Radio Morata",@"Residencia de la Torre",@"Residencia Isla Taray",@"Residencia Virgen de la Antigua",@"Servicios Sociales", nil];
    
    Subtitulo1 =[[NSArray alloc] initWithObjects:@"Plaza Mayor,1",@"Calle Tarayuela, 1",@"Calle Manuel Mac-Crohon, 62",@"Plaza Claudio Vazquez, s/n",@"Calle Grupo Escolar, s/n",@"Calle Clínica, 2",@"Plaza Don Santiago, 9",@"Calle Domingo Rodelgo, 14",@"Calle Morería, 56",@"Plaza Párroco Don Fernández Porras, 5",@"Ronda del Sur, 10 (Arganda del Rey)",@"Avenida de la Constitución,",@"Calle Bosque, s/n",@"Plaza Claudio Vázquez, s/n",@"Calle Don Juan Carlos I, 62",@"",@"Calle Grupo Escolar, 1",@"Calle Carmen, 37",@"Carretera de Perales M302, Km 3,3",@"Calle del Asilo, 2",@"", nil];
    
    Subtitulo2 =[[NSArray alloc] initWithObjects:@"91 873 03 80",@"91 873 07 76",@"91 873 08 64",@"91 873 19 90",@"91 873 90 83",@"91 873 13 26",@"91 876 36 63",@"91 873 00 13",@"91 873 12 69",@"91 873 00 22",@"91 839 40 00",@"91 873 03 36",@"",@"629 115 152 / 91 876 35 87",@"91 873 94 57",@"91 873 02 35",@"91 873 00 68 / 91 873 10 89",@"91 873 01 71",@"91 873 13 28 / 91 873 12 89",@"91 873 00 54",@"91 876 35 78", nil];
    

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{

    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

    // Return the number of rows in the section.
    return Titulo.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    static NSString *CellIdentifier = @"Cell";
    
    CustomCell *Cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (!Cell) {
        Cell = [[CustomCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
        
    }
    
    Cell.Titulo.text = [Titulo objectAtIndex:indexPath.row];
    Cell.Subtitulo1.text = [Subtitulo1 objectAtIndex:indexPath.row];
    Cell.Subtitulo2.text = [Subtitulo2 objectAtIndex:indexPath.row];
    
    return Cell;
}

- (IBAction)radio:(id)sender {
    [[UIApplication sharedApplication]
     openURL:[NSURL URLWithString:@"http://www.radiomorata.com/radiomorata.m3u"]];

}

@end
