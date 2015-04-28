//
//  SecondViewController.m
//  Pick_A_Path
//
//  Created by Nathan Bisson on 2015-03-10.
//  Copyright (c) 2015 Nathan Bisson. All rights reserved.
//

#import "SecondViewController.h"
#import "ThirdViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

@synthesize selectedChoice, pageTwoTextView, passedPage;

- (IBAction)buttonPressed:(id)sender
{
    [self performSegueWithIdentifier:@"toPageThree" sender:sender];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.navigationItem setHidesBackButton:YES animated:YES];
    //self.pageTwoTextView.text = [NSString stringWithFormat:@"Your button was %d", selectedChoice];
    self.pageTwoTextView.text = passedPage.pageText;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    ThirdViewController *vc = [segue destinationViewController];
    
    NSInteger tagIndex = [(UIBarButtonItem *)sender tag];
    
    if (tagIndex == 1) {
        _pageToPass = passedPage.choiceA;
    } else {
        _pageToPass = passedPage.choiceB;
    }
    
    [vc setSelectedChoice:tagIndex];
    [vc setPassedPage:_pageToPass];
}


@end
