//
//  UIAlertView+Convenience.m
//  Vehicles
//
//  Created by Ariel Robles on 2/9/15.
//  Copyright (c) 2015 Designated Nerd Software. All rights reserved.
//

#import "UIAlertView+Convenience.h"

@implementation UIAlertView (Convenience)

+ (void)showSimpleAlertWithTitle:(NSString *)title andMessage:(NSString *)message
{
    UIAlertView *simpleAlert = [[UIAlertView alloc] initWithTitle:title
                                                          message:message
                                                         delegate:nil
                                                cancelButtonTitle:@"OK"
                                                otherButtonTitles:nil];
    [simpleAlert show];
}
@end
