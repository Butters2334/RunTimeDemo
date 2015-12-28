//
//  AcModel+category.m
//  RuntimeDemo
//
//  Created by Anc on 15/12/28.
//  Copyright © 2015年 Ancc. All rights reserved.
//

#import "AcModel+category.h"
#import "NSObject+runtime.h"
#import <objc/runtime.h>
////在分类中实现的委托不能被获取到
//@interface AcModel(private)<AcProtocol_private>
//@end

@implementation AcModel (category)
static char categoryPropertyForStringKey;
-(void)setCategoryPropertyForString:(NSString *)categoryPropertyForString
{
    if([categoryPropertyForString isKindOfClass:NSString.class])
    {
        objc_setAssociatedObject(self, &categoryPropertyForStringKey, categoryPropertyForString, OBJC_ASSOCIATION_COPY_NONATOMIC);
    }else{
        objc_setAssociatedObject(self, &categoryPropertyForStringKey, nil, OBJC_ASSOCIATION_COPY_NONATOMIC);
    }
}

-(NSString *)categoryPropertyForString
{
    NSString *str = objc_getAssociatedObject(self, &categoryPropertyForStringKey);
    return [str isKindOfClass:NSString.class]?str:nil;
}

@end
