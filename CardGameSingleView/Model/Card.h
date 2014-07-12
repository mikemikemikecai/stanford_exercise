//
//  Card.h
//  CardGameSingleView
//
//  Created by Mike on 14-5-31.
//  Copyright (c) 2014年 CS193p. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject

- (NSString *) contents;

@property (nonatomic, getter = isChosen) BOOL chosen;
@property (nonatomic, getter = isMatched) BOOL matched;

@end
