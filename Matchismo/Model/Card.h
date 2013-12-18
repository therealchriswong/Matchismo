//
//  Card.h
//  Matchismo
//
//  Created by Chris Wong on 12/17/2013.
//  Copyright (c) 2013 Chris Wong. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject

//Public
@property (strong, nonatomic) NSString *contents;

//Primative types - no memory to manage and rename getter.
@property (nonatomic, getter = isChosen) BOOL chosen;
@property (nonatomic, getter = isMatched) BOOL matched;

- (int)match:(NSArray *)otherCards;

@end
