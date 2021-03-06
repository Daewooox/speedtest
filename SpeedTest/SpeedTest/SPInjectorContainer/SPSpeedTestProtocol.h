//
//  SPSpeedTestProtocol.h
//  SpeedTest
//
//  Created by Dmtech on 19.02.18.
//  Copyright © 2018 Dmtech. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSUInteger, SPSpeedTestState) {
    SPSpeedTestReady,
    SPSpeedTestRunning,
    SPSpeedTestComplete
};

@protocol SPSpeedTestProtocol<NSObject>

@property (nonatomic, assign) long doneSize;//uploaded, downloaded etc bytes
@property (nonatomic, assign) long chunkSize;//uploaded, downloaded etc bytes
@property (nonatomic, assign) long speed;// bytes/second
@property (nonatomic, assign) long avarageSpeed;// bytes/second
@property (nonatomic, assign) long pickSpeed;// bytes/second
@property (nonatomic, assign) SPSpeedTestState testState;

-(void)runDownloadTest;
-(void)runUploadTest;
-(void)cancelTest;

@end
