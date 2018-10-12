//
//  RHDBCommand.h
//  RHDatabaseDemo
//
//  Created by zhuruhong on 2018/10/9.
//  Copyright © 2018年 zhuruhong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <FMDB/FMDB.h>

NS_ASSUME_NONNULL_BEGIN

typedef void(^RHDBCallbackBlock)(NSDictionary *result, NSError *error);
typedef void(^RHDBExecuteBlock)(FMDatabase *db, RHDBCallbackBlock cb);

@protocol RHDBCommand <NSObject>

@required

@property (nonatomic, copy) RHDBExecuteBlock execute;

- (void)execute:(FMDatabase *)db callback:(RHDBCallbackBlock)cb;

@optional

- (void)select;
- (void)insert;
- (void)update;
//- (void)delete;

@end

@interface RHDBCommand : NSObject <RHDBCommand>

@end

NS_ASSUME_NONNULL_END
