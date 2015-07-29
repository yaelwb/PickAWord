//
//  AddWordViewController.m
//  PickAWord
//
//  Created by Yael Weinberg on 287//15.
//  Copyright (c) 2015 Yael Weinberg. All rights reserved.
//

#import "AddWordViewController.h"

@interface AddWordViewController ()<UITextFieldDelegate>
{
    WordBank* wordBank;
}
@end

@implementation AddWordViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UINavigationItem *navItem = self.navigationItem;
    navItem.title = @"Add A Word";
    
    _wordField.delegate = self;
    _defField.delegate = self;
    
    _wordField.returnKeyType = UIReturnKeyDone;
    _defField.returnKeyType = UIReturnKeyDone;
    
    UIBarButtonItem *saveBtn = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemSave target:self action:@selector(saveWord)];
    UIBarButtonItem *cancelBtn = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemCancel target:self action:@selector(clear)];
    navItem.rightBarButtonItems = [[NSArray alloc] initWithObjects:saveBtn, cancelBtn, nil];
}

- (void) viewDidDisappear:(BOOL)animated
{
    [self clear];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

-(instancetype) initWithBank:(WordBank *) bank
{
    self = [super init];
    
    if (self)
    {
        wordBank = bank;
    }
    
    return self;
}

- (BOOL) textFieldShouldReturn: (UITextField *)textField
{
    //NSLog(@"%@" , textField.text);
    
    //textField.text = @""; // clear text field
    [textField resignFirstResponder]; // keyboard dismissed
    return YES;
}
-(void) saveWord
{
    [wordBank addWord:_wordField.text AndDef:_defField.text];
    [self clear];
}
-(void) clear
{
    _wordField.text = @"";
    _defField.text = @"";
}



@end
