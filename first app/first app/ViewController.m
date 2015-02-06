//
//  ViewController.m
//  first app
//
//  Created by Ariel Robles on 2/5/15.
//  Copyright (c) 2015 nearsoft. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self setupGame];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)buttonPressed {
    count++;
    
    scoreLabel.text = [NSString stringWithFormat:@"Score: %li", (long)count];
}
- (void)setupGame {
    // 1
    seconds = 30;
    count = 0;
    
    // 2
    timerLabel.text = [NSString stringWithFormat:@"Time: %li", (long)seconds];
    scoreLabel.text = [NSString stringWithFormat:@"Score\n%li", (long)count];
    
    // 3
    timer = [NSTimer scheduledTimerWithTimeInterval:1.0f
                                             target:self
                                           selector:@selector(subtractTime)
                                           userInfo:nil
                                            repeats:YES];
}
- (void)subtractTime {
    // 1
    seconds--;
    timerLabel.text = [NSString stringWithFormat:@"Time: %li",(long)seconds];
    
    // 2
    if (seconds == 0) {
        [timer invalidate];
        
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Time is up!"
                                                        message:[NSString stringWithFormat:@"You scored %li points", (long)count]
                                                       delegate:self
                                              cancelButtonTitle:@"Play Again"
                                              otherButtonTitles:nil];
        
        [alert show];
    }
}
- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
        [self setupGame];
}

@end

