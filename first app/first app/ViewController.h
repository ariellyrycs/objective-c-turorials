//
//  ViewController.h
//  first app
//
//  Created by Ariel Robles on 2/5/15.
//  Copyright (c) 2015 nearsoft. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIAlertViewDelegate> {
    IBOutlet UILabel *scoreLabel;
    IBOutlet UILabel *timerLabel;
    NSInteger count;
    NSInteger seconds;
    NSTimer *timer;
}
- (IBAction)buttonPressed;
- (void)setupGame;
- (void)subtractTime;
@end

