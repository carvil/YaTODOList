//
//  NewTodoItem.m
//  YaTODOList
//
//  Created by Carlos Vilhena on 6/5/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "NewTodoItem.h"


@implementation NewTodoItem

@synthesize todoTitle;
@synthesize todoLabel;
@synthesize navigationBar;
@synthesize deadline;
@synthesize todos;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)dealloc
{
    [super dealloc];
    [self.todoTitle dealloc];
    [self.todoLabel dealloc];
    [self.deadline dealloc];
    [self.navigationBar dealloc];
    [self.todos dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.navigationItem setTitle:@"New Item"];
    UIBarButtonItem *addItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemSave target: self action:@selector(saveTodoItem)];
    self.navigationItem.rightBarButtonItem = addItem;
    
    //Change 'return' with 'done' in keyboard
    self.todoTitle.returnKeyType = UIReturnKeyDone;
    
    //Enable keyboard dismiss when tapping outside
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(dismissKeyboard)];
    [self.view addGestureRecognizer:tap];
}

- (void) viewDidDisappear:(BOOL)animated {
    [self.todoTitle setText:nil];
}

- (void) viewDidAppear:(BOOL)animated {
    NSDate* now = [[NSDate alloc] init];
    self.deadline.date = now;
    [now release];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (void) saveTodoItem {
    
    ItemModel *item = [[ItemModel alloc] init];
    item.todoText = [self.todoTitle text];
    item.deadline = [self.deadline date];
    [self.todos addObject:item];
    [item release];
    
    [self.navigationController popViewControllerAnimated:YES];
  
}

// Allow to dismiss the keyboard after clicking Done
- (BOOL)textFieldShouldReturn: (UITextField *)textField {
    [textField resignFirstResponder];
    return YES;
}

// Dismiss keyboard if user taps in another part of the screen 
-(void)dismissKeyboard {
    [self.todoTitle resignFirstResponder];
}




@end
