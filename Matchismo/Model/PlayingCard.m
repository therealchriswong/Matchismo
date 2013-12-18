//
//  PlayingCard.m
//  Matchismo
//
//  Created by Chris Wong on 12/18/2013.
//  Copyright (c) 2013 Chris Wong. All rights reserved.
//

#import "PlayingCard.h"

@implementation PlayingCard

//Class method
+ (NSArray *) validSuits
{
    return @[@"♠️", @"♥️", @"♣️", @"♦️"];
}

+ (NSArray *) rankStrings
{
    return @[@"?", @"A", @"2", @"3", @"4", @"5", @"6", @"7", @"8", @"9", @"10", @"J", @"Q", @"K"];
}

// Call rankStrings using self because its not public. Return the number of cards minus an invalid card.
+ (NSUInteger) maxRank
{
    return [[self rankStrings] count] - 1;
}

//Overwrite the getter for contents from Card.h
- (NSString *) contents
{
    NSArray *rankStrings = [PlayingCard rankStrings];
    return [rankStrings[self.rank] stringByAppendingString:self.suit];
}

//Overide setter/getter for suit.
@synthesize suit = _suit;


- (void)setSuit:(NSString *)suit
{
    if ([[PlayingCard validSuits] containsObject:suit]) {
        _suit = suit;
    }
}

- (NSString *)suit{
    
    return _suit ? _suit : @"?";
}


- (void)setRank:(NSUInteger)rank
{
    if ( rank <= [PlayingCard maxRank] ) {
        _rank = rank;
    }
}

@end
