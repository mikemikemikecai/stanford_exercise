//
//  CardGameViewController.m
//  CardGameSingleView
//
//  Created by Mike on 14-5-30.
//  Copyright (c) 2014年 CS193p. All rights reserved.
//

#import "CardGameViewController.h"


@interface CardGameViewController ()
@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;
@property (nonatomic) int flipscount;
@property (strong, nonatomic) PlayingCardDeck *playingCardDeck;


@end





@implementation CardGameViewController



-(int) flipscount{
    if (_flipscount) {
        _flipsLabel.text = [NSString stringWithFormat:@"Flips: %d", _flipscount];
    }
    return _flipscount;
}

-(PlayingCardDeck *) newPlayingCardDeck{
    PlayingCardDeck *playingCardDeck = [[PlayingCardDeck alloc] init];
    
    return playingCardDeck;
}

-(PlayingCardDeck *)playingCardDeck{
    
    if (!_playingCardDeck) {
        _playingCardDeck = [self newPlayingCardDeck];
    }
    
    return _playingCardDeck;
}




- (IBAction)touchCardButton:(UIButton *)sender {

    //Card *card = _playingCardDeck.drawRandomCard;
    Card *card = [self.playingCardDeck drawRandomCard];
    
    if (![sender.currentTitle length]) {
        if ([card contents]) {
            ;
        }else{
            _playingCardDeck = [self.playingCardDeck init];
            //[sender setTitle:@"c mis" forState:UIControlStateNormal];
            //[sender setBackgroundImage:[UIImage imageNamed:@"cardfront"]
            //                  forState:UIControlStateNormal ];

        }
        [sender setTitle:[card contents] forState:UIControlStateNormal];
        [sender setBackgroundImage:[UIImage imageNamed:@"cardfront"]
                          forState:UIControlStateNormal ];

    }else{
        [sender setBackgroundImage:[UIImage imageNamed:@"stanford"]
                          forState:UIControlStateNormal];
        [sender setTitle:@"" forState:UIControlStateNormal];
    }
    self.flipscount++;
}

-(void)updateCardButton:(UIButton *)cardButton forCard:(Card *) card{
    [cardButton setTitle:card.contents forState:UIControlStateNormal];
    [cardButton setBackgroundImage:[UIImage imageNamed:@"cardfront"]
                          forState:UIControlStateNormal  ];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
