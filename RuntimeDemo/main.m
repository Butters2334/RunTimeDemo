//
//  main.m
//  RuntimeDemo
//
//  Created by Anc on 15/12/28.
//  Copyright © 2015年 Ancc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSObject+runtime.h"
#import "AcModel.h"
#import "AcModel+category.h"
#import "AcMethodModel.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
//        AcModel *aModel =[AcModel new];
//        objc_msgSend简单调用
//        id rc1 = [aModel performSelector:@selector(methodForInterface)];
//        id rc2 = [aModel ac_performSelector:@selector(methodForInterface)];
//        id rc3 = [aModel ac_performSelector:@selector(methodForImp)];
        
//        class相关参数获取
//        NSLog(@"%@",[aModel propertyList]);
//        NSLog(@"%@",[aModel methodList]);
//        NSLog(@"%@",[aModel ivarList]);
//        NSLog(@"%@",[aModel protocolList]);
        
//        分类属性赋值
//        aModel.categoryPropertyForString = @"text";
//        //aModel.categoryPropertyForString = nil;
//        //aModel.categoryPropertyForString = [NSObject new];
//        NSLog(@"%@",aModel.categoryPropertyForString);
        
//        函数交换
        AcMethodModel *methodModel = [AcMethodModel new];
        //        1 2 3
        [AcMethodModel exchangeWithMethod1:@selector(method_str) andMethod2:@selector(method_str2)];
        //        2 1 3
        [AcMethodModel exchangeWithMethod1:@selector(method_str2) andMethod2:@selector(method_str3)];
        //        2 3 1
        [AcMethodModel exchangeWithMethod1:@selector(method_str3) andMethod2:@selector(method_str)];
        //        1 3 2
        [AcMethodModel exchangeWithMethod1:@selector(method_str3) andMethod2:@selector(method_str2)];
        //        1 2 3
        NSLog(@"%@",[methodModel method_str]);
        NSLog(@"%@",[methodModel method_str2]);
        NSLog(@"%@",[methodModel method_str3]);
//        NSLog(@"%@",[AcMethodModel class_method_str]);
//        NSLog(@"%@",[AcMethodModel class_method_str2]);
//        NSLog(@"%@",[AcMethodModel class_method_str3]);
        
        
        
        NSLog(@"");
    }
    return 0;
}
