//
//  User.m
//  runtime
//
//  Created by 何元博 on 2016/10/27.
//  Copyright © 2016年 heyuanbo. All rights reserved.
//

#import "User.h"

@implementation User

+(User *)exchangeUserModelWithDictionary:(NSDictionary *)dict {
    User *user = [[self alloc] init];
    
//    [user setValuesForKeysWithDictionary:dict];
    
    unsigned int count = 0;
//    
//    //获取属性列表
    Ivar *ivarList = class_copyIvarList(self, &count);
    for (int i = 0; i < count; i++) {
        Ivar ivar = ivarList[i];
        NSString *ivarName = [NSString stringWithUTF8String:ivar_getName(ivar)];
        ivarName = [ivarName substringFromIndex:1];
        NSLog(@"%@", ivarName);
        
        id value = dict[ivarName];
        [user setValue:value forKey:ivarName];
    }
    return user;
}
@end
