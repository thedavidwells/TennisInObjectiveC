//  Tennis Object Oriented in Objective-C
//  PROJECT 1 - PHASE 2
//  CS470 - Spring 2014
//
//  CREATED BY DAVID WELLS
//  Copyright (c) 2014 David Wells. All rights reserved.
//

#import "Competition.h"

/**  A Set is a Competition in which players play several games until
 *  there is a winner.  The rule of winning a set is given by class,
 *  SetScore.  The argument to method "play" specifies the player who
 *  serves the points of the first game.  After that, players
 *  alternate who serves the next game.
 */

@interface Set : Competition

//  Instance Method Declarations
-(instancetype) initWithFirstPlayer: (Player *) p1 secondPlayer:(Player *) p2;
-(Score *) play: (Player *) player;

@end
