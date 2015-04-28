//
//  ThirdViewController.m
//  Pick_A_Path
//
//  Created by Nathan Bisson on 2015-03-10.
//  Copyright (c) 2015 Nathan Bisson. All rights reserved.
//

#import "ThirdViewController.h"

@interface ThirdViewController ()

@end

@implementation ThirdViewController

@synthesize selectedChoice, pageThreeTextView, passedPage;

- (IBAction)goBack:(id)sender {
    [self.navigationController popToRootViewControllerAnimated:YES];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.navigationItem setHidesBackButton:YES animated:YES];
    //self.pageThreeTextView.text = [NSString stringWithFormat:@"Your button was %d", selectedChoice];
    self.pageThreeTextView.text = passedPage.pageText;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
