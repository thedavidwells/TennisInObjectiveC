//  Tennis Object Oriented in Objective-C
//  PROJECT 1 - PHASE 2
//  CS470 - Spring 2014
//
//  CREATED BY DAVID WELLS
//  Copyright (c) 2014 David Wells. All rights reserved.
//  All code not provided by Professor Kooshesh is the sole work of David Wells for CS470 at Sonoma State University.

#import "TieBreakerScore.h"


//  Implemented by David Wells
@implementation TieBreakerScore

//  Implemented by David Wells

//  Implementation of the two things I added to handle the tie situation, which is different from the normal game situation.

-(instancetype) initWithFirstPlayer:(Player *)p1 secondPlayer:(Player *)p2
{
    if ( ( self = [super initWithFirstPlayer:p1 secondPlayer:p2 ] ) == nil) {
        return nil;
    }
    
    return self;
}


-(BOOL) haveAWinner
{
    // Code taken almost directly from my original c++ implementation, adapted from tennis.cpp in phase1
    // return (player1Score() >= 7 || player2Score() >= 7)  && abs(player1Score() - player2Score() >=2 );
    return (self.player1Score >= 7 || self.player2Score >= 7 ) && abs(self.player1Score - self.player2Score >= 2 );
    
}


-(NSString *) description
{
    //  This method will print out the scores for a tie breaker
    return [NSString stringWithFormat:@"\n\n(Tie Breaker %d - %d\n\n", self.player1Score, self.player2Score];
    
}

@end
