//
//  NSObject+AutoProperty.h
//  DDAutoProperty
//
//  Created by Think on 2017/10/8.
//  Copyright © 2017年 Think. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (AutoProperty)

/**
 自动生成属性列表
 
 @param dict 字典
 */
+ (void)printPropertyWithDict:(NSDictionary *)dict;

@end
