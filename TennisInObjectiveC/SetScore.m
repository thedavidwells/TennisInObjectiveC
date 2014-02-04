//  Tennis Object Oriented in Objective-C
//  PROJECT 1 - PHASE 2
//  CS470 - Spring 2014
//
//  CREATED BY DAVID WELLS
//  Copyright (c) 2014 David Wells. All rights reserved.
//  All code not provided by Professor Kooshesh is the sole work of David Wells for CS470 at Sonoma State University.

#import "SetScore.h"
#import "TieBreaker.h"
#import "TieBreakerScore.h"


// Private interface
@interface SetScore()

//@property (nonatomic) TieBreakerScore *tieBreakerScore;


@end



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
    
    
    addScore: [score getWinner];
    
    self.tieBreakerScore = score;
    
}

-(NSString *) description
{
    // Used to print the results of the set that was played
    
    return [NSString stringWithFormat:@"   %d \t \t %d ", self.player1Score, self.player2Score];
        
}



@end
