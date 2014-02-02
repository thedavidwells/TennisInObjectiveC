//  Tennis Object Oriented in Objective-C
//  PROJECT 1 - PHASE 2
//  CS470 - Spring 2014
//
//  CREATED BY DAVID WELLS
//  Copyright (c) 2014 David Wells. All rights reserved.
//

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
    
    return (self.player1Score >= 7 || self.player2Score >= 7 ) && abs(self.player1Score - self.player2Score >= 2 );
    
}


-(void) print
{
    NSLog(@"(Tie Breaker %d - %d)", self.player1Score, self.player2Score);
    
}

@end
