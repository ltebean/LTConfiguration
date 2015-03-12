//
//  LTConfiguration.h
//  LTConfiguration
//
//  Created by ltebean on 15-3-12.
//  Copyright (c) 2015 ltebean. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LTConfiguration : NSObject
- (instancetype)initWithConfigurationFiles:(NSArray *)files;
- (id)valueForKeyPath:(NSString *)keyPath;
@end
