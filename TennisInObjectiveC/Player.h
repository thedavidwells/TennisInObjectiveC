//  Tennis Object Oriented
//  PROJECT 1 - PHASE 2
//  CS470 - Spring 2014
//
//  CREATED BY DAVID WELLS
//  Copyright (c) 2014 David Wells. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Score;

@interface Player : NSObject

@property (nonatomic) int probabilityOfWinningAServe;

+(Player *) otherPlayer: (Player *) player;

-(instancetype) initWithProbability:(int) prob;
-(Score *) serveAPoint;

@end
