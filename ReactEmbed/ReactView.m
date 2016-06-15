//
//  ReactView.m
//  ReactEmbed
//
//  Created by LiZhongwei on 14/6/2016.
//  Copyright © 2016 LiZhongwei. All rights reserved.
//

#import "ReactView.h"
#import "RCTRootView.h"
#import "CodePush.h"

@implementation ReactView

- (void)awakeFromNib {
//    NSURL *jsCodeLocation = [NSURL URLWithString:@"http://localhost:8081/index.ios.bundle?platform=ios"];
    // For production use, this `NSURL` could instead point to a pre-bundled file on disk:
    //
//    NSURL *jsCodeLocation = [[NSBundle mainBundle] URLForResource:@"main" withExtension:@"jsbundle"];
    NSURL *jsCodeLocation = [CodePush bundleURL];
    //
    // To generate that file, run the curl command and add the output to your main Xcode build target:
    //
    //   curl http://localhost:8081/index.ios.bundle -o main.jsbundle
    RCTRootView *rootView = [[RCTRootView alloc] initWithBundleURL:jsCodeLocation
                                                        moduleName: @"CodePushDemoApp"
                                                 initialProperties:nil
                                                     launchOptions:nil];
    [self addSubview:rootView];
    rootView.frame = self.bounds;
}

@end
