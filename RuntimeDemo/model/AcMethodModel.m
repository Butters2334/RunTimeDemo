//
//  AcMethodModel.m
//  RuntimeDemo
//
//  Created by Anc on 15/12/30.
//  Copyright © 2015年 Ancc. All rights reserved.
//

#import "AcMethodModel.h"
/**
 *  需要注意调用函数和实际被调用函数不一定是同一个
 */
@implementation AcMethodModel
-(instancetype)init
{
    self = [super init];
//    NSMethodSignature *methodSignature=[self methodSignatureForSelector:@selector(class_method_str)];
    
    return self;
}
+(NSString *)class_method_str
{
    NSLog(@"class_method_str");
    return [NSString stringWithFormat:@"%@\t\t%@",NSStringFromSelector(_cmd),@"class_method_str"];
}
+(NSString *)class_method_str2
{
    NSLog(@"class_method_str2");
    return [NSString stringWithFormat:@"%@\t\t%@",NSStringFromSelector(_cmd),@"class_method_str2"];
}
+(NSString *)class_method_str3
{
    NSLog(@"class_method_str3");
    return [NSString stringWithFormat:@"%@\t\t%@",NSStringFromSelector(_cmd),@"class_method_str3"];
}

-(NSString *)method_str
{
    NSLog(@"method_str");
    return [NSString stringWithFormat:@"%@\t\t%@",NSStringFromSelector(_cmd),@"method_str"];
}
-(NSString *)method_str2
{
    NSLog(@"method_str2");
    return [NSString stringWithFormat:@"%@\t\t%@",NSStringFromSelector(_cmd),@"method_str2"];
}
-(NSString *)method_str3
{
    NSLog(@"method_str3");
    return [NSString stringWithFormat:@"%@\t\t%@",NSStringFromSelector(_cmd),@"method_str3"];
}

//+ (NSMethodSignature *)instanceMethodSignatureForSelector:(SEL)aSelector
//{
//    return [[self new]methodSignatureForSelector:aSelector];
//}

@end
