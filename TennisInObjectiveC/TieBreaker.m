//  Tennis Object Oriented in Objective-C
//  PROJECT 1 - PHASE 2
//  CS470 - Spring 2014
//
//  CREATED BY DAVID WELLS
//  Copyright (c) 2014 David Wells. All rights reserved.
//

#import "TieBreaker.h"


//  Implemented by David Wells
@implementation TieBreaker

-(instancetype) initWithFirstPlayer: (Player *) p1 secondPlayer:(Player *) p2
{
    if( (self = [super initWithFirstPlayer:p1 secondPlayer:p2] ) == nil )
        return nil;
    return self;
}

-(Score *) play:(Player *)player
{
    
    //  Create a score object for this TieBreaker round
    //  A tiebreaker has different rules, so we made a different class to handle that
    Score *tieScore = [[TieBreakerScore alloc] initWithFirstPlayer:self.player1 secondPlayer:self.player2];
    
    while( ! [tieScore haveAWinner] ) {
        
        
        PointScore *pScore =  (PointScore *) [player serveAPoint];
        [gameScore addScore: [pScore getWinner]];
        pScore = nil;
        
        
    }
    
    
    return gameScore;
}

@end
