//  Tennis Object Oriented in Objective-C
//  PROJECT 1 - PHASE 2
//  CS470 - Spring 2014
//
//  CREATED BY DAVID WELLS
//  Copyright (c) 2014 David Wells. All rights reserved.
//  All code not provided by Professor Kooshesh is the sole work of David Wells for CS470 at Sonoma State University.

#import <Foundation/Foundation.h>

/** A player is identified by his/her probability of winning a point
 * when he/she serves that point.
 */

@class Score;

@interface Player : NSObject

@property (nonatomic) int probabilityOfWinningAServe;

+(Player *) otherPlayer: (Player *) player;

-(instancetype) initWithProbability:(int) prob;
-(Score *) serveAPoint;

@end
