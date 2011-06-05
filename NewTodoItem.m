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
    
    
    
    UIAlertView *av = [[UIAlertView alloc] initWithTitle:@"Array element" message:[self.todos objectAtIndex:0] delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:nil, nil];

    [av show];
    
    // Do any additional setup after loading the view from its nib.
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

@end