//
//  NoticiasTableViewController.m
//  MorataApp
//
//  Created by Dani Gonzalez castillo on 11/3/15.
//  Copyright (c) 2015 Dani Gonzalez castillo. All rights reserved.
//

#import "NoticiasTableViewController.h"
#import "EventCell.h"
#import <Parse/Parse.h>
#import "InfoNotiTableViewController.h"
@interface NoticiasTableViewController ()

@end

@implementation NoticiasTableViewController{
    NSArray *fechaArray;
    NSArray *eventoArray;
    NSArray *descripcionArray;
    NSArray *FotoArray;
    
    
}
@synthesize tableView;

- (void)viewDidLoad {
    [super viewDidLoad];
    [self performSelector:@selector(retrieveFromParse)];
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}
- (IBAction)atras:(id)sender {
    [self.presentingViewController dismissViewControllerAnimated:YES completion:nil];
}


- (void) retrieveFromParse {
    
    PFQuery *retrieveColors = [PFQuery queryWithClassName:@"Noticias"];
    [retrieveColors orderByAscending:@"fecha"];
    
    [retrieveColors findObjectsInBackgroundWithBlock:^(NSArray *objects, NSError *error) {
        if (!error) {
            fechaArray = [[NSArray alloc] initWithArray:objects];
            eventoArray = [[NSArray alloc] initWithArray:objects];
            descripcionArray = [[NSArray alloc] initWithArray:objects];
            FotoArray = [[NSArray alloc] initWithArray:objects];
            
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
    return eventoArray.count;
    
    
}

//setup cells in tableView
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    //setup cell
    static NSString *CellIdentifier = @"Cell";
    EventCell  *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    PFObject *tempObjec = [fechaArray objectAtIndex:indexPath.row];
    PFObject *tempObjec2 = [eventoArray objectAtIndex:indexPath.row];
    PFObject *tempObjec3 = [fechaArray objectAtIndex:indexPath.row];
    
    cell.fecha.text = [tempObjec objectForKey:@"fecha"];
    cell.noticia.text = [tempObjec2 objectForKey:@"noticia"];
    cell.descripcion.text = [tempObjec3 objectForKey:@"descripcion"];
    PFObject *FotoObjec = [FotoArray objectAtIndex:indexPath.row];
    
    PFFile *foto = [FotoObjec objectForKey:@"imagen"];
    [foto getDataInBackgroundWithBlock:^(NSData *data, NSError *error){
        if(!error){
            cell.foto.image = [UIImage imageWithData:data];
        }
        
    }];
    
    
    return cell;
}



- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"Info"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        InfoNotiTableViewController *destViewController = segue.destinationViewController;
        
        PFObject *tempObjec = [eventoArray objectAtIndex:indexPath.row];
        destViewController.recipeevento = [tempObjec objectForKey:@"noticia"];
        
        PFObject *tempObject = [fechaArray objectAtIndex:indexPath.row];
        destViewController.recipefecha = [tempObject objectForKey:@"fecha"];
        
        PFObject *tempObject2 = [descripcionArray objectAtIndex:indexPath.row];
        destViewController.recipedescripcion = [tempObject2 objectForKey:@"descripcion"];
        
        
        
        PFObject *FotoObjec = [FotoArray objectAtIndex:indexPath.row];
        PFFile *foto = [FotoObjec objectForKey:@"imagen"];
        NSData *imageData = [foto getData];
        UIImage *image = [UIImage imageWithData:imageData];
        
        destViewController.RecipeImagen = image;
        
        
    }
    
}





@end
