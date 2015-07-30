//
//  WordsViewController.m
//  PickAWord
//
//  Created by Yael Weinberg on 287//15.
//  Copyright (c) 2015 Yael Weinberg. All rights reserved.
//

#import "WordsViewController.h"
#import "WordBank.h"
#import "AddWordViewController.h"

@interface WordsViewController ()
{
    WordBank * wordBank;
    AddWordViewController *awvc;
}

@end

@implementation WordsViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    wordBank = [[WordBank alloc] init];
    
    // Connect data
    self.wordPicker.dataSource = self;
    self.wordPicker.delegate = self;
    
    UINavigationItem *navItem = self.navigationItem;
    navItem.title = @"Pick A Word";
    
    UIBarButtonItem *bbi = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(addWord)];
    navItem.rightBarButtonItem = bbi;
}

-(void) viewDidAppear:(BOOL)animated
{
    int num = arc4random () %[wordBank getWordCount];
    
    [_wordPicker selectRow:num inComponent:0 animated:YES];
    
    self.definition.text = @"";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return [wordBank getWordCount];
}

- (NSString*)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return wordBank.getWordsArray[row];
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    self.definition.text = @"";
}

- (IBAction)roll:(id)sender
{
    int num = arc4random () %[wordBank getWordCount];
    
    [_wordPicker selectRow:num inComponent:0 animated:YES];
    
    self.definition.text = @"";
}

- (IBAction)showDef:(id)sender
{
    NSString *word  = wordBank.getWordsArray[[_wordPicker selectedRowInComponent:0]];

    self.definition.text = [wordBank getDefOfWord:word];
}

-(void) addWord
{
    if (awvc == NULL)
    {
        awvc = [[AddWordViewController alloc]initWithBank:wordBank];
    }
    
    [self.navigationController pushViewController:awvc animated:YES];
}

-(void) storeData
{
    [wordBank storeData];
}

@end
