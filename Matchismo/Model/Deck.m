//
//  Deck.m
//  Matchismo
//
//  Created by Chris Wong on 12/17/2013.
//  Copyright (c) 2013 Chris Wong. All rights reserved.
//

#import "Deck.h"

@interface Deck()
@property (strong, nonatomic) NSMutableArray *cards; //Array of Card
@end


@implementation Deck

// Create a mutable array if card not created when card getter called.  AKA LazyInstantiation
- (NSMutableArray *)cards
{
    if(!_cards) {
        _cards = [[NSMutableArray alloc] init];
    }
    
    return _cards;
}


- (void)addCard:(Card *)card atTop:(BOOL)atTop
{
    if (atTop) {
        [self.cards insertObject:card atIndex:0];
    }
    else {
        [self.cards addObject:card];
    }
}

- (void)addCard:(Card *)card
{
    [self addCard:card atTop:NO];
}

- (Card *)drawRandomCard
{
    Card *randomCard = nil;
    
    if ([self.cards count]) {
        unsigned index = arc4random() % [self.cards count];
        randomCard = self.cards[index];
        [self.cards removeObjectAtIndex:index];
    }
   
    return randomCard;
}

@end
