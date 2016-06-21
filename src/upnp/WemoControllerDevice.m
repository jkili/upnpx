//
//  WemoControllerDevice.m
//  Pods
//
//  Created by Justin Kilimnik on 29/10/2015.
//
//

#import "WemoControllerDevice.h"


@implementation WemoControllerDevice

-(void)dealloc{
    
    //[mSwitchPower release];
    
    //[super dealloc];
}

-(BasicUPnPService*)switchPowerService{
    return [self getServiceForType:@"urn:Belkin:service:basicevent:1"];
}


-(SoapActionsWemoSwitchPower1*)switchPower{
    if(mSwitchPower == nil){
        mSwitchPower = (SoapActionsWemoSwitchPower1*)[[self getServiceForType:@"urn:Belkin:service:basicevent:1"] soap];
        printf("mSwitchPower: %s", mSwitchPower);
        //[mSwitchPower retain];
    }
    
    return mSwitchPower;
}


@end
