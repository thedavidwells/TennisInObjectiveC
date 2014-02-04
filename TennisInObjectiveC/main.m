//  Tennis Object Oriented in Objective-C
//  PROJECT 1 - PHASE 2
//  CS470 - Spring 2014
//
//  CREATED BY DAVID WELLS
//  Copyright (c) 2014 David Wells. All rights reserved.
//  All code not provided by Professor Kooshesh is the sole work of David Wells for CS470 at Sonoma State University.

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "Player.h"
#import "Game.h"
#import "GameScore.h"
#import "Match.h"
#import "MatchScore.h"
#import "Score.h"


//  NOTE:
//  This project is an adaption of the tennis project from object oriented C++ code to Objective-C
//  It was created for CS470 Project 1 - Phase 2 with professor Kooshesh.
//  Also, in some cases I left the original C++ code as a comment to help with implementation
//  and to better understand the differences.

//  Revisions to main() by David Wells
//  Written to work similarly to tennis.cpp
int main(int argc, char * argv[])
{
    @autoreleasepool {
        
        
        // Set up variables and initialize them to some test values
        int randSeed = 1000;
        int prob1 = 70;
        int prob2 = 70;
        // NOTE:  CHANGE THE ABOVE VALUES TO SIMULATE DIFFERENT MATCHES.
        
        // Reandom number generator with seed (default 1000)
        srandom(randSeed);
        
        
        // Create and initialize 2 players with their respective probabilities
        // Players are declared as Player objects
        Player *player1 = [[Player alloc] initWithProbability: prob1];
        Player *player2 = [[Player alloc] initWithProbability: prob2];
        
        
        // Create a MATCH - A match is the overall entity that encompases sets and games
        // A tennis match is declared as a Match type and initialized with players 1 & 2
        Match *aTennisMatch = [[Match alloc] initWithFirstPlayer:player1 secondPlayer:player2];
        
        
        // Create a score object and start playing the match!
        // The result of the match goes into the score object
        Score *tennisMatchScore = [aTennisMatch play:player1];
        
        
        // Print the final score for this tennis match
        NSLog(@"%@", tennisMatchScore);
        
        
        
        // All went well, so return!
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
        
        
    }
}
