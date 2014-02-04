//  Tennis Object Oriented in Objective-C
//  PROJECT 1 - PHASE 2
//  CS470 - Spring 2014
//
//  CREATED BY DAVID WELLS
//  Copyright (c) 2014 David Wells. All rights reserved.
//  All code not provided by Professor Kooshesh is the sole work of David Wells for CS470 at Sonoma State University.

#import "Competition.h"

@interface Competition()

@end

@implementation Competition

-(instancetype) initWithFirstPlayer: (Player *) p1 secondPlayer: (Player *) p2
{
    if( (self = [super init]) == nil )
        return nil;
    self.player1 = p1;
    self.player2 = p2;
    return self;
}

-(Score *) play: (Player *) player
{
    @throw [NSException exceptionWithName:NSInternalInconsistencyException
                                   reason:[NSString stringWithFormat:@"You must override %@ in a subclass", NSStringFromSelector(_cmd)]
                                 userInfo:nil];
}

@end
