//
//  AddWordViewController.m
//  PickAWord
//
//  Created by Yael Weinberg on 287//15.
//  Copyright (c) 2015 Yael Weinberg. All rights reserved.
//

#import "AddWordViewController.h"

@interface AddWordViewController ()
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
    
    NSString *urlAddress = @"http://www.google.com";
    NSURL *url = [NSURL URLWithString:urlAddress];
    //URL Requst Object
    NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
    
    //Load the request in the UIWebView.
    [_webView loadRequest:requestObj];
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
    
    NSString *urlAddress = @"http://www.google.com";
    NSURL *url = [NSURL URLWithString:urlAddress];
    //URL Requst Object
    NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
    
    //Load the request in the UIWebView.
    [_webView loadRequest:requestObj];
}

- (IBAction)googleWord:(id)sender
{
    NSString *urlAddress = @"https://www.google.com/webhp?gws_rd=ssl#q=";
    NSString *searchPhrase = [_wordField text];
    NSArray *searchWords = [searchPhrase componentsSeparatedByString:@" "];
    NSString *searchStr = searchWords[0];
    
    for( int i =1; i < searchWords.count ; i++)
    {
        searchStr = [searchStr stringByAppendingString:@"+"];
        searchStr = [searchStr stringByAppendingString:searchWords[i]];
    }
    
    urlAddress = [urlAddress stringByAppendingString:searchStr];
    
    NSURL *url = [NSURL URLWithString:urlAddress];
    //URL Requst Object
    NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
    
    //Load the request in the UIWebView.
    [_webView loadRequest:requestObj];
}


@end
