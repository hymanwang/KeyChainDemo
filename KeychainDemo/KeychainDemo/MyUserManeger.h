//
//  MyUserManeger.h
//  KeychainDemo
//
//  Created by Hyman Wang on 7/24/13.
//  Copyright (c) 2013 Hyman Wang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MyUserManeger : NSObject

+(void)savePassWord:(NSString *)password;
+(id)readPassWord;
+(void)deletePassWord;

@end
