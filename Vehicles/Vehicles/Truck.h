//
//  Truck.h
//  Vehicles
//
//  Created by Ariel Robles on 2/6/15.
//  Copyright (c) 2015 Designated Nerd Software. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Vehicle.h"

@interface Truck : Vehicle
@property (nonatomic, assign) NSInteger cargoCapacityCubicFeet;
+(Truck *)truckWithBrandName:(NSString *)brandName modelName:(NSString *)modelName modelYear:(NSInteger)modelYear powerSource:(NSString *)powerSource wheels:(NSInteger)numberOfWheels cargoCapacityCubicFeet:(NSInteger)cargoCapacityCubicFeet;
@end
