#import "Parser.h"

@implementation Parser

// Complete the parseString function below.
- (NSArray <NSString*>*)parseString:(NSString*)string {
    /*
    int substringCounter = 0; //счётчик открытых скобок того же типа
    
    for (int index = 0; index <= (string.length - 1); index++) { //цикл: индекс чара от нулевого до последнего
        
        NSMutableArray *processingArray = [[NSMutableArray alloc] init]; //массив для хранения строк
        NSMutableString *processingString = [[NSMutableString alloc] init]; //строка для хранения символов за проход
        NSString *round = @"()";
        NSString *square = @"[]";
        NSString *angle = @"<>";
        
        NSMutableString *verifiableChar = [NSMutableString stringWithFormat:@"%C",[string characterAtIndex:index]];//скобка, с которой сравниваем в текущий проход
        int currentIndex = index++;//индекс элемента, который проверяем
        NSMutableString *currentAdd = [NSMutableString stringWithFormat:@"%C",[string characterAtIndex:currentIndex]]; //символ, который не скобка –– записываем

     if (verifiableChar == @"(" || verifiableChar == @"[" || verifiableChar == @"<" ) {
            if ([round containsString:verifiableChar])  {
                [processingString appendString: currentAdd];
            }
             
            [processingString appendString: currentAdd];
            if (currentAdd != verifiableChar) {
                substringCounter = substringCounter;
            } else {
                substringCounter++;
            }
        }
    }*/
//    NSArray *finalArray = [processingArray copy]
    
    return @[@"Test"];
}
@end
