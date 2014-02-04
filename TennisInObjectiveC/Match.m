//  Tennis Object Oriented in Objective-C
//  PROJECT 1 - PHASE 2
//  CS470 - Spring 2014
//
//  CREATED BY DAVID WELLS
//  Copyright (c) 2014 David Wells. All rights reserved.
//  All code not provided by Professor Kooshesh is the sole work of David Wells for CS470 at Sonoma State University.

#import "Match.h"
#import "MatchScore.h"
#import "Set.h"
#import "SetScore.h"
#import "Game.h"
#import "TieBreakerScore.h"
#import "TieBreaker.h"
#import "Set.h"

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
     // Create a Match Score object for this MATCH and initialize it with Players 1 & 2
    MatchScore *scoreForMatch = [[MatchScore alloc] initWithFirstPlayer:self.player1 secondPlayer:self.player2];
    
    // While we don't have a winner of the Match, continue playing sets.
    while( ! [scoreForMatch haveAWinner] ) {
        
        //  Create a new set and score object
        Set *set = [[Set alloc] initWithFirstPlayer:self.player1 secondPlayer:self.player2];
        
        //  Start playing a set  (which consists of many games)
        //  Set the set score as the result
        SetScore *setScore = (SetScore *)[set play: player];
        
        //  Add the score to the Matchscore object
        [scoreForMatch addScore: setScore ];
        
        //  The set is over so remove it before starting another - in the C++ implemention we use:
        //  delete set;
        //  Don't worry about this because Objective-C uses ARC for memory management
        
        //  Switch servers by setting p as the other player
        //   p = p -> otherPlayer(p);
        player = [Player otherPlayer: player];
        
    }
    
    return scoreForMatch;
}


@end
