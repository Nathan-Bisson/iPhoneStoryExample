//
//  ViewController.h
//  Pick_A_Path
//
//  Created by Nathan Bisson on 2015-03-09.
//  Copyright (c) 2015 Nathan Bisson. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Page.h"

@interface ViewController : UIViewController

- (IBAction)unwindCancel:(UIStoryboardSegue *)segue;

@property (weak, nonatomic) IBOutlet UITextView *page1TextView;

@property Page *pageToPass;

@property Page * page1;
@property Page * page2;
@property Page * page3;
@property Page * page4;
@property Page * page5;
@property Page * page6;
@property Page * page7;



@end

