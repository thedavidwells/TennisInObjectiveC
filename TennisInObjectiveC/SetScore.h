//  Tennis Object Oriented in Objective-C
//  PROJECT 1 - PHASE 2
//  CS470 - Spring 2014
//
//  CREATED BY DAVID WELLS
//  Copyright (c) 2014 David Wells. All rights reserved.
//

#import "Score.h"

/**  The player who wins at least 6 games and is ahead by at least
 *  2 games wins a set.  A tie-breaker will be played is the players
 *  wins 6 games each.  In that case, the player who wins the
 *  tie-breaker wins the set.
 */

@interface SetScore : Score


-(instancetype) initWithFirstPlayer:(Player *)p1 secondPlayer:(Player *)p2;

@property (nonatomic) TieBreakerScore *tieBreakerScore;

@end
