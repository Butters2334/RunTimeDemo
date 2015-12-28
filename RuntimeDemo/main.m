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

int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        AcModel *aModel =[AcModel new];
//        id rc1 = [aModel performSelector:@selector(methodForInterface)];
//        id rc2 = [aModel ac_performSelector:@selector(methodForInterface)];
//        id rc3 = [aModel ac_performSelector:@selector(methodForImp)];
        
        NSLog(@"%@",[aModel propertyList]);
        NSLog(@"%@",[aModel methodList]);
        NSLog(@"%@",[aModel ivarList]);
        NSLog(@"%@",[aModel protocolList]);
        
        
        aModel.categoryPropertyForString = @"text";
//        aModel.categoryPropertyForString = nil;
//        aModel.categoryPropertyForString = [NSObject new];
        NSLog(@"%@",aModel.categoryPropertyForString);
        
        NSLog(@"");
    }
    return 0;
}
