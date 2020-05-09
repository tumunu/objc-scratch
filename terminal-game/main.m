#import <Foundation/Foundation.h>
#import "terminalGame.h"

int main (void) {
    
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    
    terminalGame *tg = [[terminalGame alloc] init];
    
    [tg InitGame];
    [tg PlayGame];
    
    [pool drain];
    return 0;
}
