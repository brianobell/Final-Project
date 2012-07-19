//
//  ViewController.m
//  DISHIN'
//
//  Created by iD Student on 7/17/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize titleimage;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [self setTitleimage:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (IBAction)playgame:(id)sender {
    [self performSegueWithIdentifier: @"titletogame" sender: self];
    
}

- (IBAction)choosecash:(id)sender {
}

- (IBAction)choosemusic:(id)sender 
{
    [self performSegueWithIdentifier: @"titletotracks" sender: self];
}

- (IBAction)viewacheivements:(id)sender {
}
@end
