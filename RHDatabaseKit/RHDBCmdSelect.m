//
//  RHDBCmdSelect.m
//  RHDatabaseDemo
//
//  Created by zhuruhong on 2018/10/10.
//  Copyright © 2018年 zhuruhong. All rights reserved.
//

#import "RHDBCmdSelect.h"

@interface RHDBCmdSelect ()

@end

@implementation RHDBCmdSelect

- (void)execute:(FMDatabase *)db callback:(RHDBCallbackBlock)cb
{
    
}

- (void)test
{
    RHDBCmdSelect *select = [RHDBCmdSelect new];
    select.execute = ^(FMDatabase * _Nonnull db, RHDBCallbackBlock  _Nonnull cb) {
        <#code#>
    };
}

@end
