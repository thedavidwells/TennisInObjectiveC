//  Tennis Object Oriented
//  PROJECT 1 - PHASE 2
//  CS470 - Spring 2014
//
//  CREATED BY DAVID WELLS
//  Copyright (c) 2014 David Wells. All rights reserved.
//

#import "GameScore.h"

@implementation GameScore

-(instancetype) initWithFirstPlayer: (Player *) p1 secondPlayer: (Player *) p2
{
    if( (self = [super initWithFirstPlayer:p2 secondPlayer:p2   ]) == nil)
        return nil;
    return self;
}

-(BOOL) haveAWinner
{
    return (self.player1Score >= 4 || self.player2Score >= 4) && abs( self.player1Score - self.player2Score) >= 2;
}

-(NSString *) description
{
    NSLog(@"GameScore... printing begins.");
    NSLog(@"p1 score = %d", self.player1Score);
    NSLog(@"p2 score = %d", self.player2Score);
    NSLog(@"GameScore... printing ends.");
    
    return [NSString stringWithFormat:@"\n\nplayer1 score = %d\nplayer2 score = %d\n\n", self.player1Score, self.player2Score ];
}

@end
