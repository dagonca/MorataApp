//
//  EnlacesViewController.m
//  MorataApp
//
//  Created by Dani Gonzalez castillo on 11/3/15.
//  Copyright (c) 2015 Dani Gonzalez castillo. All rights reserved.
//

#import "EnlacesViewController.h"
#import <Parse/Parse.h>
#import "EventosCell.h"

@interface EnlacesViewController ()

@end

@implementation EnlacesViewController{
    NSArray *colorsArray;
    NSArray *URLArray;
    
}
@synthesize tableView;
- (IBAction)atras:(id)sender {
    [self.presentingViewController dismissViewControllerAnimated:YES completion:nil];
}
- (void)viewDidLoad {
    
    [self performSelector:@selector(retrieveFromParse)];
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (void) retrieveFromParse {
    
    PFQuery *retrieveColors = [PFQuery queryWithClassName:@"Enlaces"];
    [retrieveColors orderByDescending:@"createdAt"];
    
    [retrieveColors findObjectsInBackgroundWithBlock:^(NSArray *objects, NSError *error) {
        if (!error) {
            colorsArray = [[NSArray alloc] initWithArray:objects];
            URLArray = [[NSArray alloc] initWithArray:objects];
            
            
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
    return colorsArray.count;
    
    
}

//setup cells in tableView
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    //setup cell
    static NSString *CellIdentifier = @"Cell";
    EventosCell  *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    PFObject *tempObjec = [colorsArray objectAtIndex:indexPath.row];
    
    cell.enlace.text = [tempObjec objectForKey:@"nombre"];
    
    
    return cell;
}


//user selects folder to add tag to
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    
    PFObject *urlObj = [URLArray objectAtIndex:indexPath.row];
    
    
    [[UIApplication sharedApplication]
     openURL:[NSURL URLWithString:[NSString stringWithFormat:@"%@",[urlObj objectForKey:@"url"]]]];
    
    
    
    
}






@end
