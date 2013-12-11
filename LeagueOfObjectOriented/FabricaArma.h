//
//  FabricaArma.h
//  LeagueOfObjectOriented
//
//  Created by CAIO REMEDIO on 12/11/13.
//  Copyright (c) 2013 Vinicius Miana. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ArcoEFlecha.h"
#import "Machado.h"
#import "Magia.h"
#import "Espada.h"





@interface FabricaArma : NSObject
{
    
}
+(Arma *) retornaArma:(int) a deRaca:(int) r;
@end
