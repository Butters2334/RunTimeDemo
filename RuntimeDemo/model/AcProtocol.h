//
//  AcProtocol.h
//  RuntimeDemo
//
//  Created by Anc on 15/12/28.
//  Copyright © 2015年 Ancc. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol AcProtocol <NSObject>

@required
-(void)methodForRequired;
@optional
-(void)methodForOptional;
@end
