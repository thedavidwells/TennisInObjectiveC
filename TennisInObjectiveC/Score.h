//  Tennis Object Oriented in Objective-C
//  PROJECT 1 - PHASE 2
//  CS470 - Spring 2014
//
//  CREATED BY DAVID WELLS
//  Copyright (c) 2014 David Wells. All rights reserved.
//

/** Class, Score, represents the abstract notion of keeping track of
 *  numbers related to different types of competition.  These numbers
 *  are meaningful only within the context of competition for which
 *  the score is kept.  For example, if the value of method,
 *  player1Score() was 3 and the score was the representation of the
 *  result of a game, 3 refers to 3 points being won by Player1().
 *  On the other hand, if this score represented a set, then 3
 *  represents the number of sets won by Player1().
 */

#import <Foundation/Foundation.h>
#import "Player.h"

@interface Score : NSObject

@property (nonatomic) Player *player1;
@property (nonatomic) Player *player2;
@property (nonatomic) int player1Score;
@property (nonatomic) int player2Score;
@property (nonatomic) Player *winner;

-(instancetype) initWithFirstPlayer: (Player *) p1 secondPlayer: (Player *) p2;
-(BOOL) areTied;
-(void) addScore: (Player *) p;
-(Player *)getWinner;
-(BOOL) haveAWinner;

@end
