//
//  PlayingCardDeck.m
//  Matchismo
//
//  Created by Chris Wong on 12/18/2013.
//  Copyright (c) 2013 Chris Wong. All rights reserved.
//

#import "PlayingCardDeck.h"
#import "PlayingCard.h"

@implementation PlayingCardDeck

- (instancetype) init
{
    
    //Check if the super class can init.
    self = [super init];
    
    if (self) {
        //Create 52 playing cards and add to deck.
        for( NSString *suit in [PlayingCard validSuits]){
            for (NSInteger rank = 1; rank < [PlayingCard maxRank]; rank++) {
                PlayingCard *card = [[PlayingCard alloc] init];
                card.suit = suit;
                card.rank = rank;
                [self addCard:card];
            }
        }
        
    }
    
    return self;

}

@end
