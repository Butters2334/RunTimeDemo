//
//  AcModel+category.m
//  RuntimeDemo
//
//  Created by Anc on 15/12/28.
//  Copyright © 2015年 Ancc. All rights reserved.
//

#import "AcModel+category.h"
#import "AcProtocol_private.h"
//测试在分类中调用委托
@interface AcModel(private)<AcProtocol_private>
@end
@implementation AcModel (category)

@end
