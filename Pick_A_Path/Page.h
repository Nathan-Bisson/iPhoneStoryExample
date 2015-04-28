//
//  Page.h
//  Pick_A_Path
//
//  Created by Nathan Bisson on 2015-03-09.
//  Copyright (c) 2015 Nathan Bisson. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Page : NSObject

@property int pageNumber;
@property NSString *pageText;
@property Page *home;
@property Page *choiceA;
@property Page *choiceB;

@end
