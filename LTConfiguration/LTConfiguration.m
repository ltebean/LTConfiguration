//
//  LTConfiguration.m
//  LTConfiguration
//
//  Created by ltebean on 15-3-12.
//  Copyright (c) 2015 ltebean. All rights reserved.
//

#import "LTConfiguration.h"
@interface LTConfiguration()
@property (nonatomic, strong) NSArray *configs;
@end

@implementation LTConfiguration
- (instancetype)initWithConfigurationFiles:(NSArray *)files;
{
    self = [super init];
    if (self) {
        NSMutableArray *configs = [NSMutableArray array];
        for (NSString *file in files) {
            NSString *path = [[NSBundle mainBundle] pathForResource:file
                                                             ofType:@"json"];
            NSData *data = [NSData dataWithContentsOfFile:path];
            [configs addObject:[NSJSONSerialization JSONObjectWithData:data options:0 error:NULL]];
        }
        self.configs = configs;
    }
    return self;
}

- (id)valueForKeyPath:(NSString *)keyPath
{
    for (NSDictionary *config in self.configs) {
        id value = [config valueForKeyPath:keyPath];
        if (value) {
            return value;
        }
    }
    return nil;
}
@end
