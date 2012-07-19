//
//  Game.h
//  DISHIN'
//
//  Created by iD Student on 7/18/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Game : UIViewController
{
    int swipecount;
    NSTimer *timer;
    UIImageView *dollar;
    
    
}
@property (weak, nonatomic) IBOutlet UIImageView *onedollar;
@property (weak, nonatomic) IBOutlet UIImageView *fiftydollar;
@property (weak, nonatomic) IBOutlet UIImageView *hundreddollar;

@end
