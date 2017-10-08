//
//  NSObject+AutoProperty.m
//  DDAutoProperty
//
//  Created by Think on 2017/10/8.
//  Copyright © 2017年 Think. All rights reserved.
//

#import "NSObject+AutoProperty.h"

@implementation NSObject (AutoProperty)

+ (void)printPropertyWithDict:(NSDictionary *)dict
{
    NSMutableString *codes = [[NSMutableString alloc] init];
    [dict enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
        NSString *code;
        if ([obj isKindOfClass:NSClassFromString(@"__NSCFString")]) {
            code = [NSString stringWithFormat:@"@property (nonatomic, copy) NSString *%@;",key];
        }else if ([obj isKindOfClass:NSClassFromString(@"__NSCFNumber")]){
            code = [NSString stringWithFormat:@"@property (nonatomic, assign) NSInteger %@;",key];
        }else if ([obj isKindOfClass:NSClassFromString(@"__NSCFArray")]){
            code = [NSString stringWithFormat:@"@property (nonatomic, strong) NSArray *%@;",key];
        }else if ([obj isKindOfClass:NSClassFromString(@"__NSCFDictionary")]){
            code = [NSString stringWithFormat:@"@property (nonatomic, strong) NSDictionary *%@;",key];
        }else if ([obj isKindOfClass:NSClassFromString(@"__NSCFBoolean")]){
            code = [NSString stringWithFormat:@"@property (nonatomic, assign) BOOL %@;",key];
        }
        [codes appendFormat:@"\n%@\n",code];
    }];
    NSLog(@"%@",codes);
}


@end
