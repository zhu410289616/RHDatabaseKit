//
//  RHDBEngine.m
//  RHDatabaseDemo
//
//  Created by zhuruhong on 2018/10/10.
//  Copyright © 2018年 zhuruhong. All rights reserved.
//

#import "RHDBEngine.h"
#import <FMDB/FMDB.h>

@interface RHDBEngine ()

@property (nonatomic, strong) FMDatabaseQueue *dbQueue;

@end

@implementation RHDBEngine

+ (instancetype)sharedInstance
{
    static id sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[self alloc] init];
    });
    return sharedInstance;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self setup];
    }
    return self;
}

- (NSString *)dbPathWithVersion
{
    NSString *docsPath = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)[0];
    NSString *dbPath = [docsPath stringByAppendingPathComponent:@"test.db"];
    return dbPath;
}

- (void)setup
{
    NSString *dbPath = [self dbPathWithVersion];
    _dbQueue = [FMDatabaseQueue databaseQueueWithPath:dbPath];
    
    [_dbQueue inDatabase:^(FMDatabase * _Nonnull db) {
        <#code#>
    }];
}

- (void)checkDatabaseVersion
{
    
}

@end
