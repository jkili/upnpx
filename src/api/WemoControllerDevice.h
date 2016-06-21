//
//  WemoControllerDevice.h
//  Pods
//
//  Created by Justin Kilimnik on 29/10/2015.
//
//

#import <Foundation/Foundation.h>
#import "SoapActionsWemoSwitchPower1.h"
#import "BasicUPnPService.h"
#import "BasicUPnPDevice.h"

/*
 * Services:
 * M - SwitchPower:1
 */

@interface WemoControllerDevice : BasicUPnPDevice {
    SoapActionsWemoSwitchPower1 *mSwitchPower;
}

@property (NS_NONATOMIC_IOSONLY, readonly, strong) SoapActionsWemoSwitchPower1 *switchPower;
@property (NS_NONATOMIC_IOSONLY, readonly, strong) BasicUPnPService *switchPowerService;

@end







