#import <Foundation/Foundation.h>

@interface KiaOrana : NSObject
- (void) kiaOrana;
@end

@implementation KiaOrana
- (void) kiaOrana {
    NSLog(@"hello world!");
}
@end

int main(void) {
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
    
    KiaOrana *ko = [[KiaOrana alloc] init];
    [ko kiaOrana];
    [ko release];
    
    [pool drain];
    return 0;
}