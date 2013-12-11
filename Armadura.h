#import <Foundation/Foundation.h>

@interface Armadura : NSObject
{
    int defesa;
}

- (Armadura *) initWithDefesa: (int) _defesa;
- (int) getDefesa;
- (void) setDefesa: (int) _defesa;


@end
