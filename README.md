
## Usage

The default configuation in default.json
```javascript
{
    "title":"default title",
    "homePage": {
        "cellOrder":[
                     "cell1",
                     "cell2"
                     ]
    }
}
```

Configuation in overide.json
```javascript
{
    "homePage": {
        "cellOrder":[
                     "cell2",
                     "cell1"
                     ]
    }
}
```

Init the configuration manager by specifying the configuration files, their order matters, config in the former one will overide the latter.
```objective-c
LTConfiguration *config = [[LTConfiguration alloc] initWithConfigurationFiles:@[@"overide", @"default"]];
```

Get value from configuation 
```objective-c
NSLog(@"title: %@", [config valueForKeyPath:@"title"]); // print 'default title', since 'title' is not specified in overide.json
NSLog(@"cell order: %@", [config valueForKeyPath:@"homePage.cellOrder"]); // print '(cell2, cell1)', since it gets overridden in overide.json
```