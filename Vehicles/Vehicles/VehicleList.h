//
//  VehicleList.h
//  Vehicles
//
//  Created by Ariel Robles on 2/9/15.
//  Copyright (c) 2015 Designated Nerd Software. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface VehicleList : NSObject

//The list of vehicles.
@property (nonatomic, strong) NSArray *vehicles;

//Singleton Instance
+ (VehicleList *)sharedInstance;


@end
