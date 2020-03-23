#import "FibonacciResolver.h"

@implementation FibonacciResolver
- (NSArray*)productFibonacciSequenceFor:(NSNumber*)number {
    int input = [number intValue];
    int res = 1;
    int next = 1;
    
    do {
        int buf = next;
        next += res;
        res = buf;
    } while (res * next < input);
    
    if (res * next > input) {
        return @[[NSNumber numberWithInt:res], [NSNumber numberWithInt:next], @0];
    } else {
        return @[[NSNumber numberWithInt:res], [NSNumber numberWithInt:next], @1];
    }
}
@end
