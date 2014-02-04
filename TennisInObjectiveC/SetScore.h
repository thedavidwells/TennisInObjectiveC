//  Tennis Object Oriented in Objective-C
//  PROJECT 1 - PHASE 2
//  CS470 - Spring 2014
//
//  CREATED BY DAVID WELLS
//  Copyright (c) 2014 David Wells. All rights reserved.
//  All code not provided by Professor Kooshesh is the sole work of David Wells for CS470 at Sonoma State University.

#import "Score.h"
#import "TieBreakerScore.h"
#import "TieBreaker.h"

/**  The player who wins at least 6 games and is ahead by at least
 *  2 games wins a set.  A tie-breaker will be played is the players
 *  wins 6 games each.  In that case, the player who wins the
 *  tie-breaker wins the set.
 */

@interface SetScore : Score


// Properties:
@property (nonatomic) TieBreakerScore *tieBreakerScore;


// Instance Methods:
-(instancetype) initWithFirstPlayer:(Player *)p1 secondPlayer:(Player *)p2;

-(BOOL) haveAWinner;

-(BOOL) shouldPlayATieBreaker;

-(void) addTieScore: (TieBreakerScore *) score;

-(NSString *) description;




@end
