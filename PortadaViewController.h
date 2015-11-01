//
//  PortadaViewController.h
//  BreaDeTajo
//
//  Created by Dani Gonzalez castillo on 18/10/13.
//  Copyright (c) 2013 Dani Gonzalez castillo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Parse/Parse.h>

@interface PortadaViewController : UIViewController<UITableViewDelegate> {
    
    
    NSArray *EventoArray;
    
}



@property (strong, nonatomic) IBOutlet UITableView *colorsTable;




@end
