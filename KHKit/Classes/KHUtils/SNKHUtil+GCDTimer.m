//
//  SNKHUtil+GCDTimer.m
//  Video
//
//  Created by hexs on 2021/3/4.
//  Copyright © 2021 cnest. All rights reserved.
//

#import "SNKHUtil+GCDTimer.h"

@implementation SNKHUtil (GCDTimer)

+ (void)scheduledTimerOncequeueType:(TimerQueue)queueType timeInterval:(NSTimeInterval)timeinterval handler:(dispatch_block_t)handler
{
    dispatch_queue_t queue;
    switch (queueType) {
        case kMainQueue: {
            queue = dispatch_get_main_queue();
            break;
        }
        case kSubThreadQueue: {
            queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 0);
            break;
        }
    }
    dispatch_time_t when = dispatch_time(DISPATCH_TIME_NOW, (int64_t)(timeinterval * NSEC_PER_SEC));
    dispatch_after(when, queue, ^{
        if (handler) {
            handler();
        }
    });
}

+ (KHGCDTimer)scheduledTimerqueueType:(TimerQueue)queueType timeInterval:(NSTimeInterval)timeinterval repeats:(BOOL)repeats handler:(dispatch_block_t)handler
{
    dispatch_queue_t queue;
    switch (queueType) {
        case kMainQueue: {
            queue = dispatch_get_main_queue();
            break;
        }
        case kSubThreadQueue: {
            queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 0);
            break;
        }
    }
    dispatch_source_t timer = dispatch_source_create(DISPATCH_SOURCE_TYPE_TIMER, 0, 0, queue);
    // GCD的时间参数，一般是纳秒(1秒 == 10的9次方纳秒)
    dispatch_time_t start = dispatch_time(DISPATCH_TIME_NOW, (int64_t)(timeinterval * NSEC_PER_SEC));
    uint64_t interval = (uint64_t)(timeinterval * NSEC_PER_SEC);
    dispatch_source_set_timer(timer, start, interval, 0);
    // 设置回调
    dispatch_source_set_event_handler(timer, ^{
        
        if (!repeats) {
            [SNKHUtil cancelTimer:timer];
        }
        if (handler) {
            handler();
        }
    });
    dispatch_resume(timer);
    return timer;
}

// 取消定时器
+ (void)cancelTimer:(KHGCDTimer)timer
{
    if (timer) {
        dispatch_source_cancel(timer);
    }
}

@end
