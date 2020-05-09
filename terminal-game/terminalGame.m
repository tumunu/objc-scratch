//
//  terminalGame.m
//

#import "terminalGame.h"

static int number = 0;
static int tries = TRIES;

@implementation terminalGame

@synthesize i, result, answer;


- (void) InitGame {
    // probably not a good idea to seed within the loop
    srandom((unsigned)(time(NULL)));
    number = random()%50;
    
    printf("Guess the number between 0 and 50\n\n");
}

- (void) PlayGame {
    printf("Enter your guess\n");
    
    while (tries) {
        printf(TRIES_LEFT, tries);
        result = scanf("%d", &i);
        
        int x = i;
        answer = [self ConditionCheck:x];
        
        if(answer == 0) {
            printf(WIN, number);
        } else {
            answer < 0 ? printf(LOW) : printf(HIGH);
        }
        
        tries--;
    }
    
    printf(LOSE, number);
}

- (int) ConditionCheck:(int)n {
    int ret;  

    if (n == number) {
        ret = 0;
    } else if (n > number) {
        ret = 1;
    } else {
        ret =-1;
    }
    
    return ret;
}

@end