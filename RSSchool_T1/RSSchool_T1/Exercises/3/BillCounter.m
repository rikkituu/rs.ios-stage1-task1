#import "BillCounter.h"

@implementation BillCounter

// Complete the following fuction
- (NSString*)compareResultForBill:(NSArray<NSNumber*>*)bill notIncludingElementWithIndex:(NSInteger)index withGivenSum:(NSNumber*)sum {
    double billDouble = ((NSNumber *)[bill valueForKeyPath: @"@sum.self"]).doubleValue;
    double indexDouble = bill[index].doubleValue;
    double givenSumDouble = sum.doubleValue;
    
    if (((billDouble - indexDouble)/2) == givenSumDouble) {
        return @"Bon Appetit";
    } else {
        int difference = ((givenSumDouble - (billDouble - indexDouble)/2));
        return [NSString stringWithFormat:@"%d", difference];
//        NSString* difference = [[NSString alloc] initWithDouble:(((billDouble - indexDouble)/2) - givenSumDouble)];
        
    }
}

@end
