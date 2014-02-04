//  Tennis Object Oriented in Objective-C
//  PROJECT 1 - PHASE 2
//  CS470 - Spring 2014
//
//  CREATED BY DAVID WELLS
//  Copyright (c) 2014 David Wells. All rights reserved.
//  All code not provided by Professor Kooshesh is the sole work of David Wells for CS470 at Sonoma State University.

#import "Competition.h"
#import "TieBreakerScore.h"

/** A TieBreaker is a game with different rules for who serves the
 * points and the number of points required to win.  The player that
 * begins a tie-breaker plays the first point.  There after, starting
 * with the next player, each player serve two points in succession
 * and the players alternate who serves the points.
 */

@interface TieBreaker : Competition


-(instancetype) initWithFirstPlayer: (Player *) p1 secondPlayer:(Player *) p2;
-(Score *) play: (Player *) player;

@end
