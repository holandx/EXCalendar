//
//  EXCalendarApperance.m
//  EXCalendar
//
//  Created by Eric on 2018/11/8.
//  Copyright © 2018 ex. All rights reserved.
//

#import "EXCalendarApperance.h"

@implementation EXCalendarApperance

+ (EXCalendarApperance *)apperance {
    static dispatch_once_t onceToken;
    static id singleton;
    dispatch_once(&onceToken, ^{
        singleton = [[EXCalendarApperance alloc] init];
    });
    
    return singleton;
}


- (CGFloat)weekTitleHeight {
    if (_weekTitleHeight <= 0) {
        return 100;
    }
    
    return _weekTitleHeight;
}


- (CGFloat)weekDayHeight {
    if (_weekDayHeight <= 0) {
        return 100;
    }
    
    return _weekDayHeight;
}


- (NSInteger)weeksToDisplay {
    if (_weeksToDisplay <= 0) {
        return 5;
    }
    
    return _weeksToDisplay;
}


- (NSInteger)months {
    if (_months <= 0) {
        return 5;
    }
    
    return _months;
}


- (NSDate *)defaultDate {
    if (!_defaultDate) {
        return [NSDate date];
    }
    
    return _defaultDate;
}


-(NSCalendar *)calendar {
    static NSCalendar *calendar;
    static dispatch_once_t once;
    
    dispatch_once(&once, ^{
        calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
        calendar.timeZone = [NSTimeZone localTimeZone];
    });
    
    return calendar;
}

@end
