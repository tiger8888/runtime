//
//  Person.h
//  runtime
//
//  Created by 何元博 on 16/10/14.
//  Copyright © 2016年 heyuanbo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    int tall;
}
@property (nonatomic, copy)NSString *name;
@property (nonatomic, assign)NSInteger weight;
- (void)instanceStudy;
- (void)instanceRun;
+ (void)classStudy;
+ (void)classRun;
@end
