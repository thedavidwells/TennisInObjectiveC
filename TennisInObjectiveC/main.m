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


//  Revisions to main() by David Wells
//  Written to work similarly to tennis.cpp
int main(int argc, char * argv[])
{
    @autoreleasepool {
        
        
        srandom(19);
        Player *player1 = [[Player alloc] initWithProbability: 50];
        Player *player2 = [[Player alloc] initWithProbability: 70];
        Game *game = [[Game alloc] initWithFirstPlayer:player1 secondPlayer:player2];
        Score *gScore = [game play: player1];  // let player1 serve for this game.
        NSLog(@"%@", gScore);
        
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
