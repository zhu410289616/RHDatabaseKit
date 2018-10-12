//
//  RHDBCmdSelect.h
//  RHDatabaseDemo
//
//  Created by zhuruhong on 2018/10/10.
//  Copyright © 2018年 zhuruhong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RHDBCommand.h"

NS_ASSUME_NONNULL_BEGIN

@interface RHDBCmdSelect : NSObject <RHDBCommand>

@property (nonatomic, copy) RHDBExecuteBlock execute;

@end

NS_ASSUME_NONNULL_END
