//
//  Tracks.m
//  DISHIN'
//
//  Created by iD Student on 7/18/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Tracks.h"

@interface Tracks ()
@end

@implementation Tracks



- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)song1:(id)sender {
    NSString *path = [[NSBundle mainBundle] pathForResource:@"Make It Rain" ofType:@"mp3"];
    theaudio = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:path] error:NULL];
    [theaudio play];

}

- (IBAction)song2:(id)sender {
    NSString *path = [[NSBundle mainBundle] pathForResource:@"I Get Money Quality" ofType:@"mp3"];
    theaudio = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:path] error:NULL];
    [theaudio play];

}

- (IBAction)song3:(id)sender {
    NSString *path = [[NSBundle mainBundle] pathForResource:@"Fuck Bitches, Get Money" ofType:@"mp3"];
    theaudio = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:path] error:NULL];
    [theaudio play];

}

- (IBAction)song4:(id)sender {
    NSString *path = [[NSBundle mainBundle] pathForResource:@"No Hands" ofType:@"mp3"];
    theaudio = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:path] error:NULL];
    [theaudio play];

}

- (IBAction)stopmusic:(id)sender {
    [theaudio stop];
}
@end
