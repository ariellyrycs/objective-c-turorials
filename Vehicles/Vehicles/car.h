//
//  car.h
//  Vehicles
//
//  Created by Ariel Robles on 2/6/15.
//  Copyright (c) 2015 Designated Nerd Software. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Vehicle.h"
@interface Car : Vehicle
@property (nonatomic, assign) BOOL isConvertible;
@property (nonatomic, assign) BOOL isHatchback;
@property (nonatomic, assign) BOOL hasSunroof;
@property (nonatomic, assign) NSInteger numberOfDoors;

+(Car *)carWithBrandName:(NSString *)brandName modelName:(NSString *)modelName modelYear:(NSInteger)modelYear powerSource:(NSString *)powerSource numberOfDoors:(NSInteger)numberOfDoors convertible:(BOOL)isConvertible hatchback:(BOOL)isHatchback sunroof:(BOOL)hasSunroof;
@end
