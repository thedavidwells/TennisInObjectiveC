//  Tennis Object Oriented in Objective-C
//  PROJECT 1 - PHASE 2
//  CS470 - Spring 2014
//
//  CREATED BY DAVID WELLS
//  Copyright (c) 2014 David Wells. All rights reserved.
//  All code not provided by Professor Kooshesh is the sole work of David Wells for CS470 at Sonoma State University.


#import "MatchScore.h"
#import "SetScore.h"
#import "Set.h"


//  Implemented by David Wells
@implementation MatchScore

-(instancetype) initWithFirstPlayer: (Player *) p1 secondPlayer: (Player *) p2
{
    //  When I initialize the MatchScore object, I initialize the score array
    self.scores = [[NSMutableArray alloc] init ];
    
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
    // scores[setNumber] = reinterpret_cast<SetScore *>(score)
    self.scores[_setNumber] = (Score * ) score;
    
    // Increment the set number
    self.setNumber++;

    // Check the winner.  Whoever wins gets their point score incremented
    // score -> getWinner() == player1() ? p1Score++ : p2Score++;
    score.getWinner ==  self.player1 ? self.player1Score++ : self.player2Score++;


}

-(NSString *) description
{
    
    // Using same format as tennis.cpp for printing the headings before printing the results:
    //cout << "   Set No.    Player A          Player B\n";
    NSLog(@"   Set No.    Player A    Player B\n");
    
    
    // I'm basically going to print out (display) the results from each set that was played in this match
    for( int i = 0; i < _setNumber; i++ ) {
        
        
        // So I'm printing out the Set Number, followed by the scores of player A and player B
        // These player scores reside in an NSMutible Array called
        NSLog(@"\t   %d       %@ ", i+1, [self.scores objectAtIndex: i ]);
        
        // Phase 1 code for reference
        // Just setting widths and specifying format for printing
        //cout << setw(7) << i+1;
        //[_scores[i] print];
        //cout << endl;
        
    }  // end for loop
    
    
    // Put the final scores for each player into the variabl
    int finalPlayer1Score = self.player1Score;
    int finalPlayer2Score = self.player2Score;
    
    
    // Determine the final winner of the match, and print out the results:
    if (finalPlayer1Score > finalPlayer2Score) {
        return [NSString stringWithFormat:@"\nPlayer A wins the match %d sets to %d \n", finalPlayer1Score, finalPlayer2Score ];
    }
    else{
        return [NSString stringWithFormat:@"\nPlayer B wins the match %d sets to %d \n", finalPlayer2Score, finalPlayer1Score ];
    }
    
    
    /*  phase 1 code for reference:
    //  If player 1 is the winner
    if ( self.player1Score > self.player2Score ) {
        cout << "\nPlayer A wins the match " << player1Score() << " sets to " << player2Score() << endl;
    }
    
    // Or if player 2 is the winner
    else{
        cout << "\nPlayer B wins the match " << player2Score() << " sets to " << player1Score() << endl;
        cout << endl;
    }
    */
    
}

@end
