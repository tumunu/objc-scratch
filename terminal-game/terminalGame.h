//
//  terminalGame.h
//

#import <Foundation/Foundation.h>

#define TRIES 3
#define TRIES_LEFT "You have only %i tries left\n"
#define LOW "Too low\n"
#define HIGH "Too high\n"
#define WIN "Yipee it was %i ... yeah we're over it too\n\n"
#define LOSE "You lost. The number was %d\n\n"


@interface terminalGame : NSObject
{
    int i, result, answer;
}

@property int i, result, answer;

- (void) InitGame;
- (void) PlayGame;

- (int) ConditionCheck:(int)n;

@end