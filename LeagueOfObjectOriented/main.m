//
//  main.m
//  Loo
//
//  Created by ANDRE GIMENEZ on 11/18/13.
//  Copyright (c) 2013 Andre_Glauco. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LeagueOfOrientedObject.h"
#import "Arena.h"
#import "Jogador.h"
#import <time.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        srand((int)time(NULL));
        LeagueOfOrientedObject *loo = [[LeagueOfOrientedObject alloc] init];
        [loo main];
        
//        srand(time(NULL));
//        Arena *arena = [[Arena alloc]init];
//    
//        NSDictionary *teste = @{
//            @"Floresta": [arena imprimirmapa],
//            @"Caverna": @1,
//            @"Planicie": @2
//        };
//        NSLog(@"Arena: %@", teste [@"Floresta"]);
//        
    }
    return 0;
}

