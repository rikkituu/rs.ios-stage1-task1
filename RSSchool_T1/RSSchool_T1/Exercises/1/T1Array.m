#import "T1Array.h"

@implementation T1Array

// Complete the following fuction
- (NSArray *)convertToHappy:(NSArray *)sadArray {
    if (sadArray.count == 0) {
        return sadArray;
    }
    NSMutableArray *processingArray = [[NSMutableArray alloc] init];
    [processingArray addObject: sadArray.firstObject];
    for (int i = 1; i < sadArray.count - 1; i++) {
        
        NSNumber *current = sadArray[i];
        NSNumber *previous = sadArray[i-1];
        NSNumber *next = sadArray[i+1];
        if (current.intValue < (previous.intValue + next.intValue)) {
            [processingArray addObject: current];
        }
    }
    [processingArray addObject: sadArray.lastObject];
    if (sadArray.count == processingArray.count) {
        return processingArray;
    }
    else {
        return [self convertToHappy: processingArray];
    }
}

@end
