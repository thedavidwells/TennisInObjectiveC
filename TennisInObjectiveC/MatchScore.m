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

-(instancetype) initWithFirstPlayer: (Player *) p1 secondPlayer: (Player *) p2
{
    if( (self = [super initWithFirstPlayer:p1 secondPlayer:p2   ]) == nil)
        return nil;
    return self;
}

-(BOOL) haveAWinner
{
    //  Using the function match_over() from the tennis.cpp
    return ( self.player1Score == 3 || self.player2Score == 3 );
}

-(void) addScore:( Score *) score
{
    // Create an array to hold all of the scores
    // scores[setNumber] = reinterpret_cast<SetScore *>(score);
   // [self.scores[_setNumber] addObject: score];
    
    self.scores[_setNumber] = (Score * ) score;

    
    // Check the winner.  Whoever wins gets their point score incremented
   score.getWinner ==  self.player1 ? self.player1Score++ : self.player2Score++;

    // Increment the set number
    self.setNumber++;
}

-(NSString *) description
{
    
    // Using same format as tennis.cpp for printing:
    //cout << "   Set No.    Player A          Player B\n";
    NSLog(@"   Set No.    Player A          Player B\n");
    
    for( int i = 0; i < _setNumber; i++ ) {
        
        NSLog(@"%d       %@", i+1, [self.scores objectAtIndex: i ]);
        
        // Old code:
        // Just setting widths and specifying format for printing
        //cout << setw(7) << i+1;
        //[_scores[i] print];
        //cout << endl;
        
    }
    
    // Print out final winner of the match:
    
    return self.player1Score > self.player2Score ?
    [NSString stringWithFormat:@"\nPlayer A wins the match %d sets to %d \n", self.player1Score, self.player2Score] :
    [NSString stringWithFormat:@"\nPlayer B wins the match %d sets to %d \n", self.player2Score, self.player1Score];
    
    
    
    /*  old code
    //  If player 1 is the winner
    if ( self.player1Score > self.player2Score ) {
        
        //cout << "\nPlayer A wins the match " << player1Score() << " sets to "
       //<< player2Score() << endl;
        
        NSLog(@"\nPlayer A wins the match %d sets to %d \n", self.player1Score, self.player2Score);
        
    }
    
    // Or if player 2 is the winner
    else{
        
        // cout << "\nPlayer B wins the match " << player2Score() << " sets to "
        // << player1Score() << endl;
        //cout << endl;
        
        NSLog(@"\nPlayer B wins the match %d sets to %d \n", self.player2Score, self.player1Score);
        
    }
    */
    
}

@end
