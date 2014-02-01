//  Tennis Object Oriented in Objective-C
//  PROJECT 1 - PHASE 2
//  CS470 - Spring 2014
//
//  CREATED BY DAVID WELLS
//  Copyright (c) 2014 David Wells. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"
#import "Competition.h"

/**  A Game is a Competition in which a player (specified by the
 *  argument to "play") serves points until there is a winner.  The
 *  rule of winning a game is given by class, GameScore.
 */

@interface Game : Competition

-(instancetype) initWithFirstPlayer: (Player *) p1 secondPlayer:(Player *) p2;
-(Score *) play: (Player *) player;

@end
