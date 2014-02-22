//
//  ORHearBeatMonitoring.h
//  HeartBit
//
//  Created by Csaba Csordas on 21/02/2014.
//  Copyright (c) 2014 Open Reply. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreBluetooth/CoreBluetooth.h>

#define DEVICE_INFO_SERVICE_UUID @"180A"
#define HEART_RATE_SERVICE_UUID @"180D"
#define ENABLE_SERVICE_UUID @"2A39"
#define NOTIFICATIONS_SERVICE_UUID @"2A37"
#define MANUFACTURER_NAME_UUID @"2A29"


@interface ORHearBeatMonitoring : NSObject <CBCentralManagerDelegate, CBPeripheralDelegate>

@property (nonatomic, strong) CBCentralManager *centralManager;
@property (nonatomic, strong) CBPeripheral     *rfduinoPeripheral;

// Properties to hold data characteristics for the peripheral device
@property (nonatomic, strong) NSString   *connected;
@property (nonatomic, strong) NSString   *manufacturer;
@property (nonatomic, strong) NSString   *deviceData;
@property (assign) uint16_t heartRate;

// Properties to handle storing the BPM and heart beat
@property (nonatomic, strong) UILabel    *heartRateBPM;
@property (nonatomic, weak) NSTimer    *pulseTimer;


@end
