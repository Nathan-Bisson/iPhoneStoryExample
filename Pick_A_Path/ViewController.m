//
//  ViewController.m
//  Pick_A_Path
//
//  Created by Nathan Bisson on 2015-03-09.
//  Copyright (c) 2015 Nathan Bisson. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()

@end

@implementation ViewController



- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        _page1 = [[Page alloc]init];
        _page2 = [[Page alloc]init];
        _page3 = [[Page alloc]init];
        _page4 = [[Page alloc]init];
        _page5 = [[Page alloc]init];
        _page6 = [[Page alloc]init];
        _page7 = [[Page alloc]init];
        
        _page1.pageNumber = 1;
        _page1.pageText = @"Your phone buzzes relentlessly with Twitter and Facebook feed updates – zombies are flooding the streets of Ottawa!  You grab your backpack.  Is the first thing you look for: \n\nChoice A: a weapon to defend yourself? \n\nChoice B: food and supplies?  Who knows when you'll be able to have another good meal?";
        _page1.home = _page1;
        _page1.choiceA = _page2;
        _page1.choiceB = _page3;
        
        _page2.pageNumber = 2;
        _page2.pageText = @"You rush to the basement and find a baseball bat, a chainsaw, and a paintball gun.  You grab the bat, a few snacks, and consider your options.  Do you: \n\nChoice A: board up the house and try wait out the invasion? \n\nChoice B: run to the mall?  It kind-of worked in that movie.";
        _page2.home = _page1;
        _page2.choiceA = _page4;
        _page2.choiceB = _page5;
        
        _page3.pageNumber = 3;
        _page3.pageText = @"You pack a few sets of clothes, and as much food as your bag can hold.  Looking cautiously outside the window, the streets seem empty.  Do you: \n\nChoice A: make a run for the car?  If you make it out of town, you may be able to buy yourself some time \n\nChoice B: call your buddies and set up a rendezvous?  You'll be safer in numbers.";
        _page3.home = _page1;
        _page3.choiceA = _page6;
        _page3.choiceB = _page7;
        
        _page4.pageNumber = 4;
        _page4.pageText = @"You tear apart your furniture and board up all of the windows and doors.  Sitting at the top of the stairs, you wait for the inevitable.  Several hours later the doorbell rings.  You cautiously peer outside, and see your friends waiting at the door.  They laugh hysterically as you rip down the barricade.  “Don't you know what day it is?” one asks you.  April 1st. Ah well - at least you're prepared.";
        _page4.home = _page1;
        /*_page4.choiceA = _page2;
        _page4.choiceB = _page3;*/
        
        _page5.pageNumber = 5;
        _page5.pageText = @"You grab your bag, lock up the house, and run down the street towards the mall.  Off in the distance, you see some lumbering silhouettes.  As you reach the doors, you notice that a few others seem to have had the same idea.  Once inside, the doors are locked, and you claim one of the big showroom beds and a 60” LED TV as your own.  Who knows how long you'll have to wait?";
        _page5.home = _page1;
        /*_page4.choiceA = _page2;
         _page4.choiceB = _page3;*/
        
        _page6.pageNumber = 6;
        _page6.pageText = @"Your bags are packed, and you get the keys to the car.  You're glad you filled up the tank on your way home from work last night.  After making sure the coast is clear, you lock the door and dash to the car.  Your parents are out of the country – thankfully – which means that the boat should be locked up along the river.  You'll be safe there; everyone knows that zombies can't swim... right?";
        _page6.home = _page1;
        /*_page4.choiceA = _page2;
         _page4.choiceB = _page3;*/
        
        _page7.pageNumber = 7;
        _page7.pageText = @"You set your Facebook status to “meet up at 45.216867, -75.962180 ”, stopping only briefly to grab a towel, and your toothbrush.  Dashing to the car, you set your GPS to the meeting point.  Several messages come in from your friends: “on the way”, “c u there”, and “brains! lol”. In 20 minutes you'll be out of the city and with your friends... but then what?";
        _page7.home = _page1;
        /*_page4.choiceA = _page2;
         _page4.choiceB = _page3;*/
    }
    return self;
}


-(IBAction)unwindCancel:(UIStoryboardSegue *)segue {
    
}

- (IBAction)buttonPressed:(id)sender
{
    [self performSegueWithIdentifier:@"toPageTwo" sender:sender];
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.page1TextView.text = _page1.pageText;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    SecondViewController *vc = [segue destinationViewController];
    
    NSInteger tagIndex = [(UIBarButtonItem *)sender tag];
    
    if (tagIndex == 1) {
        _pageToPass = _page1.choiceA;
    } else {
        _pageToPass = _page1.choiceB;
    }
    
    [vc setSelectedChoice:tagIndex];
    [vc setPassedPage:_pageToPass];
}



@end
