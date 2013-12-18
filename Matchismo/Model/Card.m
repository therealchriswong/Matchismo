//
//  Card.m
//  Matchismo
//
//  Created by Chris Wong on 12/17/2013.
//  Copyright (c) 2013 Chris Wong. All rights reserved.
//

#import "Card.h"

@interface Card()

@end

@implementation Card

- (int)match:(NSArray *)otherCards
{
    int score = 0;
    
    for (Card *card in otherCards) {
        if ([card.contents isEqualToString:self.contents]) {
            score = 1;
        }

    }
    
    return score;
}

@end
