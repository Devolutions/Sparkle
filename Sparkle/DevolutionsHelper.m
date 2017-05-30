//
//  DevolutionsHelper.m
//  Sparkle
//
//  Created by Xavier Fortin on 2017-02-09.
//  Copyright © 2017 Sparkle Project. All rights reserved.
//

#import "DevolutionsHelper.h"
#import "AppKit/NSApplication.h"

@implementation DevolutionsHelper

+ (void)runTaskAfterModalSessionEndWithBlock:(void (^)(void))callbackBlock
{
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        while ([NSApp modalWindow])
        {
            [NSThread sleepForTimeInterval:0.1];
        }
        
        dispatch_async(dispatch_get_main_queue(), callbackBlock);
    });
}

@end
