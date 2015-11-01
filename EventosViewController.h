//
//  EventosViewController.h
//  MorataApp
//
//  Created by Dani Gonzalez castillo on 27/11/13.
//  Copyright (c) 2013 Dani Gonzalez castillo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Parse/Parse.h>

@interface EventosViewController : UIViewController <UITableViewDelegate> {
    
    
    NSArray *EventoArray;
    NSArray *FechaArray;
}



@property (strong, nonatomic) IBOutlet UITableView *colorsTable;




@end
