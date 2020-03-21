#import "PalindromeSolver.h"

@implementation PalindromeSolver

// Complete the highestValuePalindrome function below.
- (NSString *) highestValuePalindrome:(NSString *)s n:(NSNumber *)n k:(NSNumber *)k {
    NSMutableString *inProgressPalindrome = [NSMutableString stringWithString:s];
    unsigned long int nInt = n.unsignedLongValue - 1; //к-во цифр в палиндроме/длина строки
    unsigned long int kInt = k.unsignedLongValue; //к-во изменений
    unsigned long int kInProgress = 0; //к-во несовпадающих пар от нуля до k
    unsigned int long halfIndex = (nInt / 2); //к-во проверяемых пар/n:2 без остатка
    for (unsigned long int  i = 0; i <= halfIndex; i++) {
        
        unichar leftChar = [inProgressPalindrome characterAtIndex:i]; // проверяемый левый
        unichar rightChar = [inProgressPalindrome characterAtIndex:nInt]; // проверяемый правый
        
        if (leftChar == rightChar) {
            nInt--;
        } else {
            nInt--;
            kInProgress++;
        }
        
    }
    
    //NSLog(@"KR: %lu", kInProgress);
    
    if (kInProgress > kInt) {
        return @"-1";
    }
    
    nInt = n.unsignedLongValue - 1;
    for (unsigned long int  i = 0; i <= halfIndex; i++) {
        unichar leftChar = [inProgressPalindrome characterAtIndex:i]; // проверяемый левый
        unichar rightChar = [inProgressPalindrome characterAtIndex:nInt]; // проверяемый правый
        
        if (leftChar != rightChar) {
            if(leftChar == '9' || rightChar == '9') {
                [inProgressPalindrome replaceCharactersInRange:NSMakeRange(i, 1) withString:@"9"];
                [inProgressPalindrome replaceCharactersInRange:NSMakeRange(nInt, 1) withString:@"9"];
                kInProgress--;
            } else {
                if (kInt >= (kInProgress + 1)) {//
                    [inProgressPalindrome replaceCharactersInRange:NSMakeRange(i, 1) withString:@"9"];
                    [inProgressPalindrome replaceCharactersInRange:NSMakeRange(nInt, 1) withString:@"9"];
                    kInProgress = kInProgress - 2;
                } else {
                    if (leftChar > rightChar) {
                        NSString *leftString = [NSString stringWithCharacters:&leftChar length:1];
                        [inProgressPalindrome replaceCharactersInRange:NSMakeRange(nInt, 1) withString:leftString];
                    } else {
                        NSString *rightString = [NSString stringWithCharacters:&rightChar length:1];
                        [inProgressPalindrome replaceCharactersInRange:NSMakeRange(i, 1) withString:rightString];
                    }
                }
            }
        }
        
        nInt--;
    }
    
    return inProgressPalindrome;
}
@end
