//
//  TurimoViewController.m
//  Morata App
//
//  Created by Dani Gonzalez castillo on 18/07/13.
//  Copyright (c) 2013 Dani Gonzalez castillo. All rights reserved.
//

#import "TurimoViewController.h"

@interface TurimoViewController ()

@end

@implementation TurimoViewController

-(IBAction)link1 {
    [[UIApplication sharedApplication]
     openURL:[NSURL URLWithString:@"http://www.ayuntamientodemorata.es/moratadetajuna/opencms/system/galleries/download/Adjuntos/guia_vias_verdes_del_tajuna.pdf"]];
}



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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here. Create and push another view controller.
    /*
     <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:detailViewController animated:YES];
     */
}

@end
