//  Tennis Object Oriented in Objective-C
//  PROJECT 1 - PHASE 2
//  CS470 - Spring 2014
//
//  CREATED BY DAVID WELLS
//  Copyright (c) 2014 David Wells. All rights reserved.
//

#import "Match.h"
#import "MatchScore.h"
#import "Set.h"
#import "SetScore.h"
#import "Game.h"
#include "TieBreakerScore.h"
#include "TieBreaker.h"

@implementation Match


//  Instance Method Implementations

-(instancetype) initWithFirstPlayer: (Player *) p1 secondPlayer:(Player *) p2
{
    if( (self = [super initWithFirstPlayer:p1 secondPlayer:p2] ) == nil )
        return nil;
    return self;
}

//  Implemented by David Wells
-(Score *) play: (Player *) player
{
     // Create a score object for this MATCH
    Score *matchScore = [[MatchScore alloc] initWithFirstPlayer:self.player1 secondPlayer:self.player2];
    
    // While we don't have a winner of the Match, continue playing sets.
    while( ! [matchScore haveAWinner] ) {
        
        //  Create a new set and score object
        Set *set = [[Set alloc] initWithFirstPlayer:self.player1 secondPlayer:self.player2];
        
        //  Start playing a set  (which consists of many games)
        //  Set the set score as the result
        SetScore *setScore = (SetScore *)[set play: player];
        
        //  Add the score to our Matchscore object
        [matchScore addScore: setScore ];
        
        //  The set is over so remove it before starting another
        //[set delete:set];
        
        //  Switch servers by setting p as the other player
        player = [Player otherPlayer: player];
        
    }
    
    return matchScore;
}


@end
