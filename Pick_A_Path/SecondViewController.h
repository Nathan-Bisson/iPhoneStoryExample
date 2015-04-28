//
//  SecondViewController.h
//  Pick_A_Path
//
//  Created by Nathan Bisson on 2015-03-10.
//  Copyright (c) 2015 Nathan Bisson. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Page.h"

@interface SecondViewController : UIViewController
{
    NSInteger selectedChoice;
}

@property (nonatomic) NSInteger selectedChoice;
@property (weak, nonatomic) IBOutlet UITextView *pageTwoTextView;
@property (nonatomic, strong) Page * passedPage;

@property Page *pageToPass;

@end
