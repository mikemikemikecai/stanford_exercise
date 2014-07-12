//
//  Deck.m
//  CardGameSingleView
//
//  Created by Mike on 14-5-31.
//  Copyright (c) 2014年 CS193p. All rights reserved.
//

#import "Deck.h"




@implementation Deck

- (NSMutableArray *)cards{
    if (!_cards) {
        _cards  = [[NSMutableArray alloc] init];
    }
   // NSLog(@"sms playingcarddeck addcard card %@", _cards);

    return _cards;
}


-(void)addCard:(Card *)card{
    [self addCard:card atTop:NO];
    //NSLog(@"sms playingcarddeck addcard card %@", _cards);

}

-(void)addCard:(Card *)card atTop:(BOOL)atTop{
    if (atTop) {
        [self.cards insertObject:card atIndex:0];
    }else{
        [self.cards addObject:card];
    }
    //NSLog(@"sms playingcarddeck addcard cardtop %@", _cards);

}

-(id)drawRandomCard{
    Card * card = nil;
    
    if ([_cards count]) {
        unsigned index = arc4random() % [self.cards count];
        card = self.cards[index];
        [self.cards removeObjectAtIndex:index];
    }
    
    return card;
}

@end
