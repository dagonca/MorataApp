//
//  EventosViewController.m
//  MorataApp
//
//  Created by Dani Gonzalez castillo on 27/11/13.
//  Copyright (c) 2013 Dani Gonzalez castillo. All rights reserved.
//

#import "EventosViewController.h"
#import "EventosCell.h"

@interface EventosViewController ()

@end

@implementation EventosViewController
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
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    [self performSelector:@selector(retrieveFromParse)];

}
- (void) retrieveFromParse {
    
    PFQuery *retrieveColors = [PFQuery queryWithClassName:@"Eventos"];
    
    [retrieveColors findObjectsInBackgroundWithBlock:^(NSArray *objects, NSError *error) {
        if (!error) {
            EventoArray = [[NSArray alloc] initWithArray:objects];
            FechaArray = [[NSArray alloc] initWithArray:objects];
            
            
        }
        
        [colorsTable reloadData];
        
    }];
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    
    return 1;
    
    
}



//get number of rows by counting number of folders
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return EventoArray.count;
    
    
}

//setup cells in tableView
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    //setup cell
    static NSString *CellIdentifier = @"EventosCell";
    EventosCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    PFObject *tempObjec = [EventoArray objectAtIndex:indexPath.row];
    PFObject *temp = [FechaArray objectAtIndex:indexPath.row];
    
    
    
    cell.Evento.text = [tempObjec objectForKey:@"evento"];
    cell.Fecha.text = [temp objectForKey:@"Fecha"];
    
    
    return cell;
}




- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
