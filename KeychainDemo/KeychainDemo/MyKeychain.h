//
//  MyKeychain.h
//  KeychainDemo
//
//  Created by Hyman Wang on 7/24/13.
//  Copyright (c) 2013 Hyman Wang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MyKeychain : NSObject

+ (void)save:(NSString *)service data:(id)data;
+ (id)load:(NSString *)service;
+ (void)delete:(NSString *)service;

@end
