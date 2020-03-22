#import "AbbreviationMaker.h"

@implementation AbbreviationMaker
// Complete the abbreviation function below.
- (NSString *) abbreviationFromA:(NSString *)a toB:(NSString *)b {
    NSMutableString *mString = [NSMutableString stringWithString:a.uppercaseString];
    NSMutableString *output = [[NSMutableString alloc] init];
    
    for (int i = 0; i < mString.length; i++) {
        int count = 0;
        for (int j = 0; j < b.length; j++) {
            if ([mString characterAtIndex:i] != [b characterAtIndex:j]) {
                count++;
            }
        }
        if (count == b.length - 1) {
            [output appendFormat:@"%c", [mString characterAtIndex:i]];
        }
    }
    
    if ([output isEqual:b]) {
        return @"YES";
    } else {
        return @"NO";
    }
    
}
@end
