//
//  SNKHUtil+GCDTimer.h
//  Video
//
//  Created by hexs on 2021/3/4.
//  Copyright © 2021 cnest. All rights reserved.
//

#import "SNKHUtil.h"

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSUInteger, TimerQueue) {
    kMainQueue = 0,
    kSubThreadQueue = 1
};
typedef dispatch_source_t KHGCDTimer;

/// 定时器
@interface SNKHUtil (GCDTimer)

/**
 *  单次定时
 *
 *  @param queueType    队列类型
 *  @param timeinterval 间隔时间
 *  @param handler      回调接口
 */
+ (void)scheduledTimerOncequeueType:(TimerQueue)queueType timeInterval:(NSTimeInterval)timeinterval handler:(dispatch_block_t)handler;
/**
 *  执行定时
 *
 *  @param queueType    队列类型
 *  @param timeinterval 间隔时间
 *  @param repeats      重复
 *  @param handler      回调接口
 *
 *  @return KHGCDTimer
 */
+ (KHGCDTimer)scheduledTimerqueueType:(TimerQueue)queueType timeInterval:(NSTimeInterval)timeinterval repeats:(BOOL)repeats handler:(dispatch_block_t)handler;
// 取消定时器
+ (void)cancelTimer:(KHGCDTimer)timer;

@end

NS_ASSUME_NONNULL_END
