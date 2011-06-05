//
//  RootViewController.h
//  YaTODOList
//
//  Created by Carlos Vilhena on 6/5/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NewTodoItem.h"

@interface RootViewController : UITableViewController {

    NSMutableArray *todos;
    NewTodoItem *newTodoItem;
}

@property (nonatomic, retain) NSMutableArray *todos;
@property (nonatomic, retain) NewTodoItem *newTodoItem;

- (void) addTodoItem;
- (IBAction) editTable:(id)sender;

@end
