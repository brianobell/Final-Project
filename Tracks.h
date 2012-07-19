//
//  Tracks.h
//  DISHIN'
//
//  Created by iD Student on 7/18/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Foundation/Foundation.h"
#import "AVFoundation/AVFoundation.h"

@interface Tracks : UIViewController
{
    AVAudioPlayer *theaudio;
}

- (IBAction)song1:(id)sender;
- (IBAction)song2:(id)sender;
- (IBAction)song3:(id)sender;
- (IBAction)song4:(id)sender;
- (IBAction)stopmusic:(id)sender;


@end
