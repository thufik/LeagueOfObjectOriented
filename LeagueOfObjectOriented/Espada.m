//
//  Espada.m
//  Loo
//
//  Created by ANDRE GIMENEZ on 11/18/13.
//  Copyright (c) 2013 Andre_Glauco. All rights reserved.
//

#import "Espada.h"
#import "Jogador.h"

@implementation Espada 


-(Espada *) initWithForcaMaxima:(int)f andPrecisaoAtaque:(double) p {
    self = [super init];
    if (self) {
        precisaoDoAtaque = p;
        forcaMaxima = f;
        desgate = 0;
    }
    return self;
}

-(double) calcularForcaAtaque:(int)raca {
    double bonus = (raca == [Jogador HUMANO] || raca == [Jogador ORC]) ? 1.1 : 1;
    return (forcaMaxima * (1 - ((desgate++)/10)) * precisaoDoAtaque) * bonus;
}

@end
