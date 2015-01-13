//
//  NSDate+UtilityKit.m
//  JEUtilityKitDemo
//
//  Created by 尹现伟 on 15-1-7.
//

#import "NSDate+UtilityKit.h"

@implementation NSDate(Utility)

- (BOOL)isBiggerDate:(NSDate *)date{
    if ([self timeIntervalSinceDate:date] < 0.0) {
        return NO;
    };
    return YES;
}

- (NSString *)showTime{
    
    NSCalendar *cal = [NSCalendar currentCalendar];
    NSDateComponents *components = [cal components:( NSCalendarUnitHour | NSCalendarUnitMinute | NSCalendarUnitSecond ) fromDate:[[NSDate alloc] init]];
    
    [components setHour:-[components hour]];
    [components setMinute:-[components minute]];
    [components setSecond:-[components second]];
    NSDate *today = [cal dateByAddingComponents:components toDate:[[NSDate alloc] init] options:0];
    
    [components setHour:-24];
    [components setMinute:0];
    [components setSecond:0];
    NSDate *yesterday = [cal dateByAddingComponents:components toDate: today options:0];
    
    components = [cal components:NSCalendarUnitWeekday | NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay fromDate:[[NSDate alloc] init]];
    
    [components setDay:([components day] - ([components weekday] - 1))];
    NSDate *thisWeek  = [cal dateFromComponents:components];
    
    //    [components setDay:([components day] - 7)];
    //    NSDate *lastWeek  = [cal dateFromComponents:components];
    //
    //    [components setDay:([components day] - ([components day] -1))];
    //    NSDate *thisMonth = [cal dateFromComponents:components];
    //
    //    [components setMonth:([components month] - 1)];
    //    NSDate *lastMonth = [cal dateFromComponents:components];
    
    //    NSLog(@"today=%@",today);
    //    NSLog(@"yesterday=%@",yesterday);
    //    NSLog(@"thisWeek=%@",thisWeek);
    //    NSLog(@"lastWeek=%@",lastWeek);
    //    NSLog(@"thisMonth=%@",thisMonth);
    //    NSLog(@"lastMonth=%@",lastMonth);
    
    NSDateFormatter* formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"HH:mm"];
    NSLocale *zh_Locale = [[NSLocale alloc] initWithLocaleIdentifier:[[NSLocale preferredLanguages] objectAtIndex:0]];
    [formatter setLocale:zh_Locale];
    
    if ([self isBiggerDate:today]) {
        return [formatter stringFromDate:self];
    }
    else if ([self isBiggerDate:yesterday]) {
        return [NSString stringWithFormat:@"昨天 %@",[formatter stringFromDate:self]];
    }
    else if ([self isBiggerDate:thisWeek]){
        [formatter setDateFormat:@"EEEE HH:mm"];
        return [formatter stringFromDate:self];
    }
    else{
        [formatter setDateFormat:@"MM-dd HH:mm"];
        return [formatter stringFromDate:self];
    }
    return @"";
}

- (NSString *)stringFormat:(NSString *)format{
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    NSTimeZone *timeZone = [NSTimeZone localTimeZone];
    
    [formatter setTimeZone:timeZone];
    [formatter setDateFormat : format];

    [formatter setDateFormat : format];
    
    return [formatter stringFromDate:self];
}

@end
