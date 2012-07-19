//
//  ViewController.h
//  DISHIN'
//
//  Created by iD Student on 7/17/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
- (IBAction)playgame:(id)sender;
- (IBAction)choosecash:(id)sender;
- (IBAction)choosemusic:(id)sender;
- (IBAction)viewacheivements:(id)sender;
@property (weak, nonatomic) IBOutlet UIImageView *titleimage;

@end
