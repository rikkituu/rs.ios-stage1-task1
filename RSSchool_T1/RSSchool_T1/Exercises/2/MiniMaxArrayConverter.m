#import "MiniMaxArrayConverter.h"

@implementation MiniMaxArrayConverter

// Complete the convertFromArray function below.
- (NSArray<NSNumber*>*)convertFromArray:(NSArray<NSNumber*>*)array {
    
    int min = array[0].intValue;
    int max = array[0].intValue;
    
    for (int i = 1; i < array.count; i++) {
        if (min >= array[i].intValue) {
            min = array[i].intValue;
        }
        if (max <= array[i].intValue) {
            max = array[i].intValue;
        }
    }
    
    int sum = ((NSNumber *)[array valueForKeyPath: @"@sum.self"]).intValue;
    
    NSNumber* minNumber = [[NSNumber alloc] initWithInt:(sum - max)];
    NSNumber* maxNumber = [[NSNumber alloc] initWithInt:(sum - min)];
    
    NSLog(@"%@  %@", minNumber, maxNumber);
    
    return @[minNumber, maxNumber];
}

@end
