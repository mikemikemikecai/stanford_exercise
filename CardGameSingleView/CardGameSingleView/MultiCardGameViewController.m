//
//  MultiCardGameViewController.m
//  CardGameSingleView
//
//  Created by Mike on 14-6-20.
//  Copyright (c) 2014年 CS193p. All rights reserved.
//

#import "MultiCardGameViewController.h"
#import "CardGameViewController.h"

@interface MultiCardGameViewController ()


@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray*cardButton;
@property (strong, nonatomic) NSMutableArray* cards;
@property (strong, nonatomic) SwitchCardGame* switchCardGame;
@end

@implementation MultiCardGameViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if (self) {
        // Custom initialization
        NSInteger i = [self.cardButton count];
//        Card* card;
        for (;i > 0; i--) {
            //[self.cardButton[i] setBackgroundImage:@"cardfront"];
            self.cards[i] = self.switchCardGame.playingCardDeck.drawRandomCard;
        }
    }
    return self;
}

-(id)initWithCardCount:(NSInteger)cardCount {
    self = [super init];
    
    return self;
}

- (id)init{
    return [super initWithNibName:@"stanford_exercise" bundle:nil];
}



- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
