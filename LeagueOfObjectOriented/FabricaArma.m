//
//  FabricaArma.m
//  LeagueOfObjectOriented
//
//  Created by CAIO REMEDIO on 12/11/13.
//  Copyright (c) 2013 Vinicius Miana. All rights reserved.
//

#import "FabricaArma.h"
#import <time.h>
@implementation FabricaArma


+(Arma *) retornaArma:(int) a deRaca:(int) r
{
    
    float f = (rand() % 41) + 60;
    if (a == 1) {
    return [[ArcoEFlecha alloc] initWithQuantidadeFlechas:10 andPrecisaoArma:f];
}
    else if (a == 2){
    return [[Espada alloc] initWithForcaMaxima:1 andPrecisaoAtaque:f];
}
    else if (a == 3){
    return [[Machado alloc] initWithForcaMaxima:1 andPrecisaoArma:f];
}
    else return [[Magia alloc] initWithPrecisaoArma:f andRaca:r];
}



@end
