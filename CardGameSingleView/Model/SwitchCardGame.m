//
//  SwitchCardGame.m
//  CardGameSingleView
//
//  Created by Mike on 14-6-13.
//  Copyright (c) 2014年 CS193p. All rights reserved.
//

#import "SwitchCardGame.h"

@interface SwitchCardGame()

@property (nonatomic)  int randomIndex;
@property (strong,nonatomic) NSMutableArray *cards;


@end

@implementation SwitchCardGame

-(instancetype)init{
    self = [super init];
    if (self){
        _randomIndex = self.randomIndex;
    }
    return self;
}

-(id)initWithCardCount:(NSInteger)cardCount usingDeck:(Deck *)deck{
    
    return self;
}

-(void) flipCardAtIndex:(NSInteger)index{
    
}

-(Card*)cardAtIndex:(NSInteger)index{
    return index < [self.cards count]? self.cards[index]: nil;
}

-(id) initWithCardCount:(int) count{
    self = [super init];
    

    return self;
}

-(void)flipRandomCard{
    
}

-(int)randomIndex{
    _randomIndex =arc4random() % [PlayingCard maxRank];
    return _randomIndex;
}

@end
