//
//  PlayingCardDeck.h
//  CardGameSingleView
//
//  Created by Mike on 14-6-12.
//  Copyright (c) 2014年 CS193p. All rights reserved.
//

#import "Deck.h"
#import "PlayingCard.h"

@interface PlayingCardDeck : Deck


//这里最好添加一个反回当前card数的方法，避免，initwithcardcount方法中的cardcount超出deck中的card数时报错。

@end
