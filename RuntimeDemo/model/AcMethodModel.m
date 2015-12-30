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
+(NSString *)class_method_str
{
    return [NSString stringWithFormat:@"%@\t\t%@",NSStringFromSelector(_cmd),@"class_method_str"];
}
+(NSString *)class_method_str2
{
    return [NSString stringWithFormat:@"%@\t\t%@",NSStringFromSelector(_cmd),@"class_method_str2"];
}
+(NSString *)class_method_str3
{
    return [NSString stringWithFormat:@"%@\t\t%@",NSStringFromSelector(_cmd),@"class_method_str3"];
}

-(NSString *)method_str
{
    return [NSString stringWithFormat:@"%@\t\t%@",NSStringFromSelector(_cmd),@"method_str"];
}
-(NSString *)method_str2
{
    return [NSString stringWithFormat:@"%@\t\t%@",NSStringFromSelector(_cmd),@"method_str2"];
}
-(NSString *)method_str3
{
    return [NSString stringWithFormat:@"%@\t\t%@",NSStringFromSelector(_cmd),@"method_str3"];
}
@end
