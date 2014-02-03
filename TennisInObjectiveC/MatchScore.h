//  Tennis Object Oriented in Objective-C
//  PROJECT 1 - PHASE 2
//  CS470 - Spring 2014
//
//  CREATED BY DAVID WELLS
//  Copyright (c) 2014 David Wells. All rights reserved.
//

#import "Score.h"

/**  A match is won by the player who wins the first 3 sets.
 */

@interface MatchScore : Score

@property(nonatomic) int setNumber;
@property(nonatomic) NSMutableArray *scores;

-(instancetype) initWithFirstPlayer:(Player *)p1 secondPlayer:(Player *)p2;

-(BOOL) haveAWinner;

-(void) addScore:( Score *) score;

-(void) print;


@end
