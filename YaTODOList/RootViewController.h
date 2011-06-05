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

    NSArray *todos;
    NewTodoItem *newTodoItem;
}

@property (nonatomic, retain) NSArray *todos;
@property (nonatomic, retain) NewTodoItem *newTodoItem;

- (void) addTodoItem;

@end
