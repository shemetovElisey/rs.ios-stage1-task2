#import "TimeConverter.h"

@implementation TimeConverter
// Complete the following function
- (NSString*)convertFromHours:(NSString*)hours minutes:(NSString*)minutes {
    NSMutableString *mString = [[NSMutableString alloc] init];
    NSNumberFormatter *dateFormatter = [[NSNumberFormatter alloc] init];
    [dateFormatter setNumberStyle:NSNumberFormatterSpellOutStyle];
    NSString *hour = [dateFormatter stringFromNumber:[NSNumber numberWithInt:[hours intValue]]];
    
    if (![minutes intValue]) {
        mString = [NSMutableString stringWithFormat:@"%@ o' clock", hour];
    } else if ([minutes intValue] > 60) {
        return @"";
    } else if ([minutes intValue] == 15) {
        mString = [NSMutableString stringWithFormat:@"quarter past %@", hour];
    } else if ([minutes intValue] == 30) {
        mString = [NSMutableString stringWithFormat:@"half past %@", hour];
    } else if ([minutes intValue] > 30) {
        NSString *_hour = [dateFormatter stringFromNumber:[NSNumber numberWithInt:[hours intValue] + 1]];
        NSString *_minute = [dateFormatter stringFromNumber:[NSNumber numberWithInt:60 - [minutes intValue]]];
        if ([minutes intValue] != 45) {
            mString = [NSMutableString stringWithFormat:@"%@ minutes to %@", _minute, _hour];
        } else {
            mString = [NSMutableString stringWithFormat:@"quarter to %@", _hour];
        }
    } else {
        NSString *_minute = [dateFormatter stringFromNumber:[NSNumber numberWithInt:[minutes intValue]]];
        mString = [NSMutableString stringWithFormat:@"%@ minutes past %@", _minute, hour];
    }
    
    return mString;
}
@end
