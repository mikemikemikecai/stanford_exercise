//
//  PlayingCard.m
//  CardGameSingleView
//
//  Created by Mike on 14-6-7.
//  Copyright (c) 2014年 CS193p. All rights reserved.
//

#import "PlayingCard.h"

@implementation PlayingCard


@synthesize suit = _suit;

- (NSString *)contents
{
    //NSLog(@"testtesttest");

    NSString *rankString = [PlayingCard rankStrings][self.rank];
    return [rankString stringByAppendingString:self.suit];
}


+ (NSArray *)validSuits{
    //NSLog(@"testtesttest");

    return @[@"♥",@"♦",@"♠",@"♣"];
}


+(NSUInteger)maxRank{
    //NSLog(@"testtesttest");

    return [[PlayingCard rankStrings] count] - 1;
}


+(NSArray *)rankStrings
{
    //NSLog(@"testtesttest");
    return @[@"?", @"A", @"2", @"3", @"4", @"5", @"6", @"7", @"8", @"9", @"10", @"J", @"Q", @"K"];
}




@end
