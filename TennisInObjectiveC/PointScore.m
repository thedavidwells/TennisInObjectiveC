//  Tennis Object Oriented in Objective-C
//  PROJECT 1 - PHASE 2
//  CS470 - Spring 2014
//
//  CREATED BY DAVID WELLS
//  Copyright (c) 2014 David Wells. All rights reserved.
//  All code not provided by Professor Kooshesh is the sole work of David Wells for CS470 at Sonoma State University.

#import "PointScore.h"

@implementation PointScore

-(BOOL) haveAWinner
{
    return self.player1Score == 1 || self.player2Score == 1;
}

-(NSString *) description
{
    NSLog(@"PointScore... printing begins.");
    NSLog(@"p1 score = %d", self.player1Score);
    NSLog(@"p2 score = %d", self.player2Score);
    NSLog(@"PointScore... printing ends.");

    return [NSString stringWithFormat:@"\n\nplayer1 score = %d\nplayer2 score = %d\n\n", self.player1Score, self.player2Score ];

}

@end
