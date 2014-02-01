//  Tennis Object Oriented in Objective-C
//  PROJECT 1 - PHASE 2
//  CS470 - Spring 2014
//
//  CREATED BY DAVID WELLS
//  Copyright (c) 2014 David Wells. All rights reserved.
//

#import "SetScore.h"
#import "TieBreaker.h"
#import "TieBreakerScore.h"

@implementation SetScore


-(instancetype) initWithFirstPlayer: (Player *) p1 secondPlayer: (Player *) p2
{
    if( (self = [super initWithFirstPlayer:p1 secondPlayer:p2   ]) == nil)
        return nil;
    return self;
}

-(BOOL) haveAWinner
{
    return (self.player1Score >= 6 || self.player2Score >= 6) && abs( self.player1Score - self.player2Score) >= 2;
}

-(BOOL) shouldPlayATieBreaker
{
    return self.player1Score == 6 && self.player2Score == 6;
}

-(void) addTieScore: (TieBreakerScore *) score
{
    
    //  NEED TO FINISH IMPLEMENTING...
    
}



@end
