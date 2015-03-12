//
//  ViewController.m
//  LTConfiguration
//
//  Created by ltebean on 15-3-12.
//  Copyright (c) 2015 ltebean. All rights reserved.
//

#import "ViewController.h"
#import "LTConfiguration.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    LTConfiguration *config = [[LTConfiguration alloc] initWithConfigurationFiles:@[@"overide", @"default"]];
    NSString *title = [config valueForKeyPath:@"title"];
    NSArray *cellOrder = [config valueForKeyPath:@"homePage.cellOrder"];
    
    NSLog(@"title: %@", title);
    NSLog(@"cell order: %@", cellOrder);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
