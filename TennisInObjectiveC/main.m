//  Tennis Object Oriented
//  PROJECT 1 - PHASE 2
//  CS470 - Spring 2014
//
//  CREATED BY DAVID WELLS
//  Copyright (c) 2014 David Wells. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "AppDelegate.h"
#import "Player.h"
#import "Game.h"
#import "GameScore.h"
#import "Match.h"
#import "MatchScore.h"



//  Revisions to main() by David Wells
//  Written to work similarly to tennis.cpp
int main(int argc, char * argv[])
{
    @autoreleasepool {
        
        // Set up variables and initialize them to some test values
        int randSeed = 1000;
        int prob1 = 70;
        int prob2 = 70;
        
        // Reandom number generator with seed (default 1000)
        srandom(randSeed);
        
        // Create and initialize 2 players with their respective probabilities
        Player *player1 = [[Player alloc] initWithProbability: prob1];
        Player *player2 = [[Player alloc] initWithProbability: prob2];
        
        // Create a MATCH - A match is the overall entity that encompases sets and games
        Match *aTennisMatch = [[Match alloc] initWithFirstPlayer:player1 secondPlayer:player2];
        
        // Create a score - and start playing the match!
        // The result of the match goes into score
        
        
        
        // Print the final score for this tennis match
        
        
        Game *game = [[Game alloc] initWithFirstPlayer:player1 secondPlayer:player2];
        Score *gScore = [game play: player1];  // let player1 serve for this game.
        NSLog(@"%@", gScore);
        
        
        // All went well, so return!
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
        
        
    }
}
