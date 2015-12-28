//
//  AcModel.m
//  RuntimeDemo
//
//  Created by Anc on 15/12/28.
//  Copyright © 2015年 Ancc. All rights reserved.
//

#import "AcModel.h"
@interface AcModel()
{
    NSString *ivarForString;
}
@end
@implementation AcModel
-(NSString *)methodForInterface
{
    NSLog(@"%@",NSStringFromSelector(_cmd));
    return NSStringFromSelector(_cmd);
}
-(BOOL)methodForImp
{
    NSLog(@"%@",NSStringFromSelector(_cmd));
    return YES;
}
#pragma mark protocol
-(void)methodForRequired
{
    NSLog(@"%@",NSStringFromSelector(_cmd));
}

@end
