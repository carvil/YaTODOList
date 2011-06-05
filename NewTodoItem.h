//
//  NewTodoItem.h
//  YaTODOList
//
//  Created by Carlos Vilhena on 6/5/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface NewTodoItem : UIViewController {
    UITextField *todoTitle;
    UILabel *todoLabel;
    UINavigationBar *navigationBar;
    UIDatePicker *deadline;
    NSArray *todos;
}

@property (nonatomic, retain) IBOutlet UITextField *todoTitle;
@property (nonatomic, retain) IBOutlet UILabel *todoLabel;
@property (nonatomic, retain) IBOutlet UINavigationBar *navigationBar;
@property (nonatomic, retain) IBOutlet UIDatePicker *deadline;

@property (nonatomic, retain) NSArray *todos;

@end
