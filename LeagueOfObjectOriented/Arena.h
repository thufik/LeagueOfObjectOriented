#import <Foundation/Foundation.h>
#import "Jogador.h"
#import <time.h>

@interface Arena : NSObject {
    int tipo;
}

@property int tipo;

-(Arena *) init;
-(NSString *) imprimirmapa;
-(double) calcularBonusArena:(Jogador *)jogador;

@end
