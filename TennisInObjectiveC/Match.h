//  Tennis Object Oriented in Objective-C
//  PROJECT 1 - PHASE 2
//  CS470 - Spring 2014
//
//  CREATED BY DAVID WELLS
//  Copyright (c) 2014 David Wells. All rights reserved.
//  All code not provided by Professor Kooshesh is the sole work of David Wells for CS470 at Sonoma State University.

#import <Foundation/Foundation.h>
#import "Competition.h"

/**  A Match is a Competition in which players play several sets until
 *  there is a winner.  The rule of winning a match is given by class,
 *  MatchScore.  The argument to method "play" specifies the player
 *  who serves the points of the first game of the first set of a
 *  match.  After that, players alternate who serves the next set.
 */


@interface Match : Competition

//  Instance Method Declarations
-(instancetype) initWithFirstPlayer: (Player *) p1 secondPlayer:(Player *) p2;
-(Score *) play: (Player *) player;


@end
