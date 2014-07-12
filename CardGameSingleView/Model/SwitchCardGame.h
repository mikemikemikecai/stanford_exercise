//
//  SwitchCardGame.h
//  CardGameSingleView
//
//  Created by Mike on 14-6-13.
//  Copyright (c) 2014年 CS193p. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PlayingCardDeck.h"
@interface SwitchCardGame : NSObject

-(void)flipRandomCard;
@property PlayingCardDeck *playingCardDeck;

-(id)initWithCardCount:(NSInteger)cardCount usingDeck:(Deck*)deck;
-(void) flipCardAtIndex:(NSInteger)index;
-(Card*)cardAtIndex:(NSInteger)index;


@property (readonly,nonatomic) int score;



@end
