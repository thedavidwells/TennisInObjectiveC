//  Tennis Object Oriented in Objective-C
//  PROJECT 1 - PHASE 2
//  CS470 - Spring 2014
//
//  CREATED BY DAVID WELLS
//  Copyright (c) 2014 David Wells. All rights reserved.
//  All code not provided by Professor Kooshesh is the sole work of David Wells for CS470 at Sonoma State University.

#import <Foundation/Foundation.h>
#import "Player.h"

/** Competition is the abstract notion of a "competitive activity"
 * between two players.  It is assumed that this type of activity
 * results in a score that will be reported by an instance of class,
 * "Score".
 */

@interface Competition : NSObject

@property (nonatomic) Player *player1;
@property (nonatomic) Player *player2;

-(instancetype) initWithFirstPlayer: (Player *) p1 secondPlayer: (Player *) p2;
-(Score *) play: (Player *) player;

@end
