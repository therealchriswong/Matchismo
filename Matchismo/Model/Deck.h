//
//  Deck.h
//  Matchismo
//
//  Created by Chris Wong on 12/17/2013.
//  Copyright (c) 2013 Chris Wong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject

- (void)addCard:(Card *)card atTop:(BOOL)atTop;
- (void)addCard:(Card *)card;

- (Card *)drawRandomCard;

@end
