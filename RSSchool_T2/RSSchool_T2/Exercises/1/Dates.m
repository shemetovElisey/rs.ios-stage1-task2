#import "Dates.h"

@implementation Dates

- (NSString *)textForDay:(NSString *)day month:(NSString *)month year:(NSString *)year {
    NSString *strDate = [NSString stringWithFormat:@"%@ %@ %@", day, month, year];
    NSDateFormatter *format = [[NSDateFormatter alloc] init];
    [format setDateFormat:@"dd MM yy"];
    NSDate *_date = [format dateFromString:strDate];
    
    [format setDateFormat:@"dd MMMM, EEEE"];
    [format setLocale:[NSLocale localeWithLocaleIdentifier:@"ru"]];
    if (_date) {
        NSString *output = [format stringFromDate:_date];
        return output;
    } else {
        return @"Такого дня не существует";
    }
    
}
@end
