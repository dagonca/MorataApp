//
//  PortadaViewController.m
//  BreaDeTajo
//
//  Created by Dani Gonzalez castillo on 18/10/13.
//  Copyright (c) 2013 Dani Gonzalez castillo. All rights reserved.
//

#import "PortadaViewController.h"
#import "PortadaCell.h"
@interface PortadaViewController ()

@end

@implementation PortadaViewController
@synthesize colorsTable;

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
    PFObject *Object = [PFObject objectWithClassName:@"Test Object"];
    [Object setObject:@"Test Object" forKey:@"test recived"];
    [Object save];
    

    [super viewDidLoad];
	// Do any additional setup after loading the view.
     [self performSelector:@selector(retrieveFromParse)];
}
- (void) retrieveFromParse {
    
    PFQuery *retrieveColors = [PFQuery queryWithClassName:@"Portada"];
    
    [retrieveColors findObjectsInBackgroundWithBlock:^(NSArray *objects, NSError *error) {
        if (!error) {
            EventoArray = [[NSArray alloc] initWithArray:objects];
            
        }
        
        [colorsTable reloadData];
        
    }];
}





//get number of rows by counting number of folders
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return EventoArray.count;
    
    
}

//setup cells in tableView
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    //setup cell
    static NSString *CellIdentifier = @"PortadaCell";
    PortadaCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
        PFObject *FotoObjec = [EventoArray objectAtIndex:indexPath.row];
    PFFile *foto = [FotoObjec objectForKey:@"Portada"];
    
    
    
    [foto getDataInBackgroundWithBlock:^(NSData *data, NSError *error){
        if(!error){
            cell.foto.image = [UIImage imageWithData:data];
        }
        
    }];
    
    
    
    return cell;
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




@end
