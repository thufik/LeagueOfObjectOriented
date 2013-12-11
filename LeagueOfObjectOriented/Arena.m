#import "Arena.h"

@implementation Arena

@synthesize tipo;

static const int FLORESTA = 1;
static const int CAVERNA = 2;
static const int PLANICIE = 3;
static const int CASTELO = 4;
static const int PANTANO = 5;

static Arena *sharedArena = nil;

+(Arena *) sharedArena {
    if(sharedArena == nil)
    {
        sharedArena = [[Arena alloc] init];
        [sharedArena setTipo: rand() % 5 + 1];
    }
    return sharedArena;
}

-(double) calcularBonusArena:(Jogador *)jogador{
    double bonus = 1;
    if (tipo == FLORESTA) {
        if ([jogador raca] == [Jogador ELFO]) {
            bonus = 1.2;
        }
        else if ([jogador raca] == [Jogador HUMANO]) {
            bonus = 1.1;
        }
    }
    else if (tipo == CAVERNA){
        if ([jogador raca] == [Jogador ANAO]) {
            bonus = 1.2;
        }
        else if ([jogador raca] == [Jogador ORC]) {
            bonus = 1.1;
        }
    }
    else if (tipo == PLANICIE){
        if ([jogador raca] == [Jogador HUMANO] || [Jogador ORC] == [jogador raca]) {
            bonus = 1.1;
        }
    
    }
    else if (tipo == CASTELO){
        
    
    if ([jogador raca] == [Jogador HUMANO]) {
        bonus = 1.2;
    }
    else if ([jogador raca] == [Jogador ELFO]) {
        bonus = 1.1;
    }
    else if ([jogador raca] == [Jogador ANAO]){
        bonus = 1.05;
    }
    }
    else{
        if ([jogador raca] == [Jogador ORC]){
            bonus = 1.2;
        }
    }
    return bonus;
    
   
    }
-(NSString *) imprimirmapa {
    if (tipo == FLORESTA)
    //NSLog(@"Floresta");
        return @"Floresta";
    else if (tipo == PANTANO)
        //NSLog (@"Pantano");
        return @"Pantano";
    else if (tipo == CASTELO)
        //NSLog(@"Castelo");
        return @"Castelo";
    else if (tipo == PLANICIE)
        //NSLog(@"Planicie");
        return @"Planicie";
    else
        //NSLog(@"Caverna");
        return @"Caverna";
}

@end
