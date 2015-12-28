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
@property NSString *propertyForString;
@property NSInteger propertyForInteger;
@property CGFloat   propertyForFloat;
@property Class     propertyForClass;

-(NSString *)methodForInterface;
@end

