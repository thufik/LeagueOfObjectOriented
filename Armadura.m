#import "Armadura.h"

@implementation Armadura

- (Armadura *) initWithDefesa: (int) _defesa
{
    self = [super init];
    if(self)
    {
        defesa = _defesa;
    }
    return self;
}

- (int) getDefesa
{
    return defesa;
}

- (void) setDefesa: (int) _defesa;
{
    defesa = _defesa;
}

@end
