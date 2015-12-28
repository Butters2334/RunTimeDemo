//
//  AcModel+category.h
//  RuntimeDemo
//
//  Created by Anc on 15/12/28.
//  Copyright © 2015年 Ancc. All rights reserved.
//

#import "AcModel.h"
#import "AcProtocol_private.h"


@interface AcModel (category)<AcProtocol_private>

//分类属性没有set get函数
@property NSString *categoryPropertyForString;
//@property NSInteger categoryPropertyForInteger;
//@property CGFloat   categoryPropertyForFloat;
//@property Class     categoryPropertyForClass;

@end


