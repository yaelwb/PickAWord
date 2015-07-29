//
//  AddWordViewController.h
//  PickAWord
//
//  Created by Yael Weinberg on 287//15.
//  Copyright (c) 2015 Yael Weinberg. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WordBank.h"

@interface AddWordViewController : UIViewController 

@property (nonatomic,weak) IBOutlet UITextField *wordField;
@property (nonatomic,weak) IBOutlet UITextField *defField;

-(instancetype) initWithBank:(WordBank *) bank;


@end
