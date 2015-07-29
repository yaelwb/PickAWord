//
//  WordsViewController.h
//  PickAWord
//
//  Created by Yael Weinberg on 287//15.
//  Copyright (c) 2015 Yael Weinberg. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WordsViewController : UIViewController <UIPickerViewDataSource, UIPickerViewDelegate>
@property (weak, nonatomic) IBOutlet UIPickerView *wordPicker;
@property (weak, nonatomic) IBOutlet UIButton *rollBtn;
@property (weak, nonatomic) IBOutlet UIButton *showDefBtn;
@property (weak, nonatomic) IBOutlet UILabel *definition;

@end
