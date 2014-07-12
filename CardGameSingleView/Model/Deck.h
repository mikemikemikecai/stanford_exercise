//
//  Deck.h
//  CardGameSingleView
//
//  Created by Mike on 14-5-31.
//  Copyright (c) 2014年 CS193p. All rights reserved.
//

#import "Card.h"

@interface Deck : NSObject

-(void)addCard:(Card *)card atTop:(BOOL)atTop;
-(void)addCard:(Card *)card;

-(Card *)drawRandomCard;

@property (nonatomic) NSMutableArray *cards;

@end

