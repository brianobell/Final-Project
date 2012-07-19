//
//  Game.m
//  DISHIN'
//
//  Created by iD Student on 7/18/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Game.h"

@interface Game ()

    

@end

@implementation Game
@synthesize onedollar;
@synthesize fiftydollar;
@synthesize hundreddollar;

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
    swipecount = 0;
    
    //CREATE MONEYS
    CGRect myImageRect = CGRectMake(36, 0, 247, 480);
    dollar = [[UIImageView alloc] initWithFrame:myImageRect];
    [self.view addSubview:dollar];
    //choose which dollar to make
    //1 dollar
    if(swipecount == 0)
    {
        [dollar setImage:[UIImage imageNamed:@"1 dollar bill.jpeg"]];
    }
    
    [self.view addSubview: dollar];
    
    
    
    
}
/*- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    while (1==1) {
        UITouch *touch = [[event allTouches] anyObject];
        CGPoint currentPoint = [touch locationInView:self.view];
        if (touch.view != self.view) {
            touch.view.center = currentPoint;
        }
        if (dollar.center.x < 159 || dollar.center.x > 161){
            float yhold = dollar.center.y;
            dollar.center = CGPointMake(160, yhold);
        }
        
        //flip dollar off screen
        if (dollar.center.y < 50) {
            timer = [NSTimer scheduledTimerWithTimeInterval:0.05 target:self selector:@selector(animate) userInfo:nil repeats:YES];
        }
        
    }
}*/
-(void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event 
{
    

    UITouch *touch = [[event allTouches] anyObject];
    CGPoint location = [touch locationInView:touch.view];
    dollar.center = location;
    
    //keep dollar from going horizontal
    if (dollar.center.x < 159 || dollar.center.x > 161){
        float yhold = dollar.center.y;
        dollar.center = CGPointMake(160, yhold);
    }
    
    //flip dollar off screen
    if (dollar.center.y < 50) {
        timer = [NSTimer scheduledTimerWithTimeInterval:0.05 target:self selector:@selector(animate) userInfo:nil repeats:YES];
    }
}


-(void)animate
{
    int ycount = dollar.center.y;
    dollar.center = CGPointMake(160, (ycount-10));
    if (dollar.center.y < -240) {
            
        
        [timer invalidate];
        timer = nil;
        if(timer==nil){
        NSLog(@"raining");
        }
        dollar.center = CGPointMake(160, 230);
        
    }
    
    
    
}
-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event 
{
    [self touchesBegan:touches withEvent:event];
}
- (void)viewDidUnload
{
    [self setOnedollar:nil];
    [self setFiftydollar:nil];
    [self setHundreddollar:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
