//
//  DevolutionsHelper.h
//  Sparkle
//
//  Created by Xavier Fortin on 2017-02-09.
//  Copyright © 2017 Sparkle Project. All rights reserved.
//

#ifndef DevolutionsHelper_h
#define DevolutionsHelper_h

#import <Foundation/Foundation.h>

@interface DevolutionsHelper : NSObject

+ (void)runTaskAfterModalSessionEndWithBlock:(void (^)(void))callbackBlock;

@end

#endif /* DevolutionsHelper_h */
