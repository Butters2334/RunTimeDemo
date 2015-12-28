//
//  AcModel.h
//  RuntimeDemo
//
//  Created by Anc on 15/12/28.
//  Copyright © 2015年 Ancc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AcProtocol.h"

@interface AcModel : NSObject<AcProtocol>
//基础类中定义的属性都能正常获取
//@property NSString *propertyForString;
//@property NSInteger propertyForInteger;
//@property CGFloat   propertyForFloat;
//@property Class     propertyForClass;
@property (strong) void(^proprtyForBlock)(void);
//@property BOOL(^proprtyForBlock2)(NSString *);

//基础类中获取函数正常
-(NSString *)methodForInterface;
@end

