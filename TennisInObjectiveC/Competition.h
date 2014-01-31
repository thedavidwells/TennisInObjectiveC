//  Tennis Object Oriented
//  PROJECT 1 - PHASE 2
//  CS470 - Spring 2014
//
//  CREATED BY DAVID WELLS
//  Copyright (c) 2014 David Wells. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"

@interface Competition : NSObject

@property (nonatomic) Player *player1;
@property (nonatomic) Player *player2;

-(instancetype) initWithFirstPlayer: (Player *) p1 secondPlayer: (Player *) p2;
-(Score *) play: (Player *) player;

@end
