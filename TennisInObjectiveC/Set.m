//  Tennis Object Oriented in Objective-C
//  PROJECT 1 - PHASE 2
//  CS470 - Spring 2014
//
//  CREATED BY DAVID WELLS
//  Copyright (c) 2014 David Wells. All rights reserved.
//

#import "Set.h"
#import "SetScore.h"
#import "Game.h"
#include "TieBreakerScore.h"
#include "TieBreaker.h"

@implementation Set


//  Instance Method Implementations

-(instancetype) initWithFirstPlayer: (Player *) p1 secondPlayer:(Player *) p2
{
    if( (self = [super initWithFirstPlayer:p1 secondPlayer:p2] ) == nil )
        return nil;
    return self;
}

//  Implemented by David Wells
-(Score *) play:(Player *)player
{
     // Create a score object for this SET
    SetScore *setScore = [[SetScore alloc] initWithFirstPlayer:self.player1 secondPlayer:self.player2];
    
    
    // While we don't have a winner of the Set, continue playing games.
    while( ! [setScore haveAWinner] ) {
        
        // Create a new game and score object
        Game *game = [[Game alloc ] initWithFirstPlayer:self.player1 secondPlayer:self.player2];
        
        // Start playing the game
        Score *gameScore = [game play:player];
        
        // Get the winner from the game and add the points from the game
        [setScore addScore: [gameScore  getWinner] ];
        
        // Delete the game, and free up memory because the game is over
        [game delete:game];
        
        // After the game switch servers
        player = [Player otherPlayer: player];
        
        // If we have a TIE, play a tiebreaker!
        if( [setScore shouldPlayATieBreaker] ) {
            
            // create a new tiebreaker object with player 1 and player 2
            TieBreaker *tieBreaker = [[TieBreaker alloc] initWithFirstPlayer:self.player1 secondPlayer:self.player2];
            
            // We'll add the tiebreaker score to score, but we'll need to cast the result of playing a tiebreaker to the same type.
            //setScore -> addTieScore( reinterpret_cast<TieBreakerScore *>(tieBreaker -> play(p)));
            [setScore addTieScore: (TieBreakerScore *)[tieBreaker play:player]];
            
            // Now that we've settled the tie, we can return out of the set
            return setScore;
        }
        
        
        
    }
    
    
    return setScore;
    
}

@end
