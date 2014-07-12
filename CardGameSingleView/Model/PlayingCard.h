//
//  PlayingCard.h
//  CardGameSingleView
//
//  Created by Mike on 14-6-7.
//  Copyright (c) 2014年 CS193p. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card

@property (strong, nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;

+ (NSArray *)validSuits;
+ (NSUInteger)maxRank;


@end
