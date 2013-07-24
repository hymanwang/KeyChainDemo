//
//  MyUserManeger.m
//  KeychainDemo
//
//  Created by Hyman Wang on 7/24/13.
//  Copyright (c) 2013 Hyman Wang. All rights reserved.
//

#import "MyUserManeger.h"
#import "MyKeychain.h"

@implementation MyUserManeger

static NSString * const KEY_IN_KEYCHAIN = @"com.userinfo";
static NSString * const KEY_PASSWORD = @"com.password";

+ (void)savePassWord:(NSString *)password
{
    NSMutableDictionary *usernamepasswordKVPairs = [NSMutableDictionary dictionary];
    [usernamepasswordKVPairs setObject:password forKey:KEY_PASSWORD];
    [MyKeychain save:KEY_IN_KEYCHAIN data:usernamepasswordKVPairs];
}

+ (id)readPassWord
{
    NSMutableDictionary *usernamepasswordKVPair = (NSMutableDictionary *)[MyKeychain load:KEY_IN_KEYCHAIN];
    return [usernamepasswordKVPair objectForKey:KEY_PASSWORD];
}

+ (void)deletePassWord
{
    [MyKeychain delete:KEY_IN_KEYCHAIN];
}

@end
