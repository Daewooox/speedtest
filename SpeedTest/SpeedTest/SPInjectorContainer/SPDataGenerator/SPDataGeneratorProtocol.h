//
//  SPDataGeneratorProtocol.h
//  SpeedTest
//
//  Created by Pavel Skovorodko on 2/21/18.
//  Copyright © 2018 Dmtech. All rights reserved.
//

@protocol SPDataGeneratorProtocol <NSObject>

- (NSData *)generateDataWithLength:(NSUInteger)length;

@end
