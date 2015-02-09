//
//  Motorcycle.h
//  Vehicles
//
//  Created by Ariel Robles on 2/6/15.
//  Copyright (c) 2015 Designated Nerd Software. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Vehicle.h"
@interface Motorcycle : Vehicle
@property (nonatomic, strong) NSString *engineNoise;
+(Motorcycle *)motorcycleWithBrandName:(NSString *)brandName modelName:(NSString *)modelName modelYear:(NSInteger)modelYear engineNoise:(NSString *)engineNoise;
@end
