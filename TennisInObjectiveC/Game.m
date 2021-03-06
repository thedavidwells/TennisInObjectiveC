//  Tennis Object Oriented in Objective-C
//  PROJECT 1 - PHASE 2
//  CS470 - Spring 2014
//
//  CREATED BY DAVID WELLS
//  Copyright (c) 2014 David Wells. All rights reserved.
//  All code not provided by Professor Kooshesh is the sole work of David Wells for CS470 at Sonoma State University.

#import "Game.h"
#import "GameScore.h"
#import "PointScore.h"

@implementation Game

-(instancetype) initWithFirstPlayer: (Player *) p1 secondPlayer:(Player *) p2
{
    if( (self = [super initWithFirstPlayer:p1 secondPlayer:p2] ) == nil )
        return nil;
    return self;
}

-(Score *) play:(Player *)player
{
    Score *gameScore = [[GameScore alloc] initWithFirstPlayer:self.player1 secondPlayer:self.player2];
    
    while( ! [gameScore haveAWinner] ) {
        PointScore *pScore =  (PointScore *) [player serveAPoint];
        [gameScore addScore: [pScore getWinner]];
        pScore = nil;
    }
    return gameScore;
}

@end
