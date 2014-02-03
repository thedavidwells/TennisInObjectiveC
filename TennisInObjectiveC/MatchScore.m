//  Tennis Object Oriented in Objective-C
//  PROJECT 1 - PHASE 2
//  CS470 - Spring 2014
//
//  CREATED BY DAVID WELLS
//  Copyright (c) 2014 David Wells. All rights reserved.
//

#import "MatchScore.h"
#import "SetScore.h"
#import "Set.h"


//  Implemented by David Wells
@implementation MatchScore


-(BOOL) haveAWinner
{
    //  Using the function match_over() from the tennis.cpp
    return ( self.player1Score == 3 || self.player2Score == 3 );
}

-(void) addScore:( Score *) score
{
    // Create an array to hold all of the scores
    // scores[setNumber] = reinterpret_cast<SetScore *>(score);
    [self.scores addObject: (SetScore *)score];
    
    // Increment the set number
    _setNumber++;
    
    
    // Check the winner.  Whoever wins gets their point score incremented
    // score -> getWinner() == player1() ? p1Score++ : p2Score++;
    [scores addObject: (SetScore *) score ];
    Score.getWinner = self.player1Score ? self.player1Score++ : self.player2Score++;
    
}

-(void) print
{
    
}

@end
