//  Tennis Object Oriented in Objective-C
//  PROJECT 1 - PHASE 2
//  CS470 - Spring 2014
//
//  CREATED BY DAVID WELLS
//  Copyright (c) 2014 David Wells. All rights reserved.
//

#import "Score.h"

/**  The player who scores at least 7 points and is ahead by at least
 *  2 points wins a tie-breaker.
 */

@interface TieBreakerScore : Score

-(instancetype) initWithFirstPlayer:(Player *)p1 secondPlayer:(Player *)p2;
-(BOOL) haveAWinner;
-(void) print;


@end
