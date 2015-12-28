//
//  RTTool.m
//  RuntimeDemo
//
//  Created by Anc on 15/12/7.
//  Copyright © 2015年 Ancc. All rights reserved.
//

#import "RuntimeTool.h"
#import <objc/runtime.h>
@implementation RuntimeTool
/**
 *  initialize类函数在当前类被调用时才会触发
 *  比如调用[RuntimeTool new];
 */
+(void)initialize
{
    
}
/**
 *  load类函数在当前类运行时就调用,连import都不需要,但是为了结构清晰,还请增加一行import以方便梳理结构
 */
+(void)load
{
//    [ViewController exchangeWithMethod1:@selector(viewDidLoad) andMethod2:@selector(rt_viewDidLoad)];
//    [NSClassFromString(@"UIViewController") exchangeWithSEL1:@"viewDidLoad" andSEL2:@"rt_viewDidLoad"];
}
@end

////不适合使用实例变量处理类型转换问题
//@implementation NSString(runtime)
//-(void)exchangeWithMethod1:(SEL)originalSelector andMethod2:(SEL)swizzledSelector
//{
//    [NSClassFromString(self) exchangeWithMethod1:originalSelector
//                                      andMethod2:swizzledSelector];
//}
//-(void)exchangeWithSEL1:(NSString *)originalSelector andSEL2:(NSString *)swizzledSelector
//{
//    [self exchangeWithMethod1:NSSelectorFromString(originalSelector)
//                   andMethod2:NSSelectorFromString(swizzledSelector)];
//}
//@end


@implementation NSObject(runtime)
/**
 *  修改任何类的函数,使用新函数替代,可用于delegate或系统函数
 *  @tip:需要注意替换之后在整个项目中都不能调用原先的函数,需要时都只能调用新函数,函数交换需要严格考虑好
 *  @tip:如果originalSelector并不存在于class中时,流程等于是给class创建了新函数(但是名称为originalSelector)
 *  @tip:慎用
 *
 *  @param originalSelector 原先的函数
 *  @param swizzledSelector 需要替换的函数
 */
+(void)exchangeWithMethod1:(SEL)originalSelector andMethod2:(SEL)swizzledSelector
{
    static dispatch_once_t once;
    dispatch_once(&once,^{
        Class class = [self class];
        Method originalMethod = class_getInstanceMethod(class, originalSelector);
        Method swizzledMethod = class_getInstanceMethod(class, swizzledSelector);
        BOOL success = class_addMethod(class, originalSelector, method_getImplementation(swizzledMethod), method_getTypeEncoding(swizzledMethod));
        if (success) {
            class_replaceMethod(class, swizzledSelector, method_getImplementation(originalMethod), method_getTypeEncoding(originalMethod));
        } else {
            method_exchangeImplementations(originalMethod, swizzledMethod);
        }
    });
}
+(void)exchangeWithSEL1:(NSString *)originalSelector andSEL2:(NSString *)swizzledSelector
{
    [self exchangeWithMethod1:NSSelectorFromString(originalSelector)
                   andMethod2:NSSelectorFromString(swizzledSelector)];
}

@end