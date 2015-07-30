//
//  WordBank.h
//  PickAWord
//
//  Created by Yael Weinberg on 287//15.
//  Copyright (c) 2015 Yael Weinberg. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WordBank : NSObject

-(instancetype) init;
-(void) addWord:(NSString *) word AndDef:(NSString *) def;
-(NSString *) getDefOfWord:(NSString *) word;
-(NSUInteger) getWordCount;
-(NSArray *) getWordsArray;
-(void) storeData;
-(void) restoreData;
@end
