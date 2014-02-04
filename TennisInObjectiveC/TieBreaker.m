//  Tennis Object Oriented in Objective-C
//  PROJECT 1 - PHASE 2
//  CS470 - Spring 2014
//
//  CREATED BY DAVID WELLS
//  Copyright (c) 2014 David Wells. All rights reserved.
//  All code not provided by Professor Kooshesh is the sole work of David Wells for CS470 at Sonoma State University.

#import "TieBreaker.h"
#import "PointScore.h"
#import "TieBreakerScore.h"
#import "GameScore.h"
#import "PointScore.h"
#import "Player.h"
#import "Score.h"



//  Implemented by David Wells
@implementation TieBreaker

-(instancetype) initWithFirstPlayer: (Player *) p1 secondPlayer:(Player *) p2
{
    if( (self = [super initWithFirstPlayer:p1 secondPlayer:p2] ) == nil )
        return nil;
    return self;
}


//  Implemented by David Wells
-(Score *) play:(Player *)player
{
    
    //  Create a score object for this TieBreaker round
    //  A tiebreaker has different rules, so we made a different class to handle that
    TieBreakerScore *tieScore = [[TieBreakerScore alloc] initWithFirstPlayer:self.player1 secondPlayer:self.player2];
    
    // Switch servers
    // p = p -> otherPlayer(p);
    player = [Player otherPlayer: player];
    
    // Create a variable to keep track of when we switch servers (initialized to not switch)
    bool switchTheServer = false;
    
    //  While we don't have a winner of the tie-breaker round...
    while( ! [tieScore haveAWinner] ) {
        
        // Continue serving points and getting the winner
        PointScore *pointScore = (PointScore *) [player serveAPoint];
        [tieScore addScore: [pointScore getWinner] ];
        
        //  Here we determine if we need to switch servers
        //  Because we switch the server in a tie-breaker round every 2 turns
        if (switchTheServer) {
            
            // Switch servers
            player = [Player otherPlayer: player];
            
        }
        
        // Set the server variable to the opposite of whatever it is currently set to
        // The point is to switch servers every other time
        switchTheServer = !switchTheServer;
        
    }
    
    
    return tieScore;
}

@end
