#import <Foundation/Foundation.h>
#import "Arma.h"
#import "Armadura.h";

@class Arena;

@interface Jogador : NSObject {
    NSString *nome;
    int raca;
    double vida;
    int forcaEscudo;
    Arma * armaPrimaria;
    Arma * armaSecundaria;
    Armadura * armadura;
}

+(int)ELFO;
+(int)HUMANO;
+(int)ORC;
+(int)ANAO;

@property NSString *nome;
@property int raca;
@property double vida;
@property int forcaEscudo;
@property Arma * armaPrimaria;
@property Arma * armaSecundaria;
@property Armadura * armadura;

-(Jogador *) initWithNome:(NSString *)n andRaca:(int)r andArmaPrimaria:(Arma *)ap andArmaSecundaria:(Arma *)as andArmadura:(Armadura *) _armadura;
-(double) ataque:(Arena *)a andEscolhe:(int)e;
-(void) sofrerAtaque:(double) forca;

@end
