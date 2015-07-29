//
//  WordBank.m
//  PickAWord
//
//  Created by Yael Weinberg on 287//15.
//  Copyright (c) 2015 Yael Weinberg. All rights reserved.
//

#import "WordBank.h"
@interface WordBank ()
{
    NSMutableDictionary *wordToDef;

}
@end
@implementation WordBank

-(instancetype) init
{
    self = [super init];
    if (self)
    {
        wordToDef = [[NSMutableDictionary alloc] init];
        
        [wordToDef setValue:@"shorten, abridge" forKey:@"abbreviate"];
        [wordToDef setValue:@"act of refraining from" forKey:@"abstinence"];
        [wordToDef setValue:@"high praise" forKey:@"adulation"];
        [wordToDef setValue:@"misfortune" forKey:@"adversity"];
        [wordToDef setValue:@"pertaining to beauty" forKey:@"aesthetic"];
        [wordToDef setValue:@"agreeable" forKey:@"amicable"];
        [wordToDef setValue:@"out-of-date" forKey:@"anachronistic"];
        [wordToDef setValue:@"short account of event" forKey:@"anecdote"];
        [wordToDef setValue:@"nameless" forKey:@"anonymous"];
        [wordToDef setValue:@"opponent" forKey:@"antagonist"];
        [wordToDef setValue:@"extremely dry" forKey:@"arid"];
        [wordToDef setValue:@"hard-working" forKey:@"assiduous"];
        [wordToDef setValue:@"sanctuary" forKey:@"asylum"];
        [wordToDef setValue:@"friendly, helpful" forKey:@"benevolent"];
        [wordToDef setValue:@"trust among friends" forKey:@"camaraderie"];
        [wordToDef setValue:@"to criticize harshly" forKey:@"censure"];
        [wordToDef setValue:@"indirect, roundabout" forKey:@"circuitous"];
        [wordToDef setValue:@"able to see the future" forKey:@"clairvoyant"];
        [wordToDef setValue:@"to work together" forKey:@"collaborate"];
        [wordToDef setValue:@"sympathy, mercy" forKey:@"compassion"];
        [wordToDef setValue:@"to settle differences" forKey:@"compromise"];
        [wordToDef setValue:@"patronizing" forKey:@"condescending"];
        [wordToDef setValue:@"provisional, contingent" forKey:@"conditional"];
        [wordToDef setValue:@"follower of customs" forKey:@"conformist"];
        [wordToDef setValue:@"crowd of people" forKey:@"congregation"];
        [wordToDef setValue:@"joining of parts" forKey:@"convergence"];
        [wordToDef setValue:@"harmful" forKey:@"deleterious"];
        [wordToDef setValue:@"rabble-rousing leader" forKey:@"demagogue"];
        [wordToDef setValue:@"straying from main point" forKey:@"digression"];
        [wordToDef setValue:@"hard-working" forKey:@"diligent"];
        [wordToDef setValue:@"dishonor, disgrace" forKey:@"discredit"];
        [wordToDef setValue:@"to regard with scorn" forKey:@"disdain"];
        [wordToDef setValue:@"variant, moving apart" forKey:@"divergent"];
        [wordToDef setValue:@"sharing of feelings" forKey:@"empathy"];
        [wordToDef setValue:@"follow an example" forKey:@"emulate"];
        [wordToDef setValue:@"tiring, weakening" forKey:@"enervating"];
        [wordToDef setValue:@"improve, augment" forKey:@"enhance"];
        [wordToDef setValue:@"momentary, fleeting" forKey:@"ephemeral"];
        [wordToDef setValue:@"short-lived, as an image" forKey:@"evanescent"];
        [wordToDef setValue:@"irritation, frustration" forKey:@"exasperation"];
        [wordToDef setValue:@"outstanding" forKey:@"exemplary"];
        [wordToDef setValue:@"guilt diminishing" forKey:@"extenuating"];
        [wordToDef setValue:@"flushed, ornate" forKey:@"florid"];
        [wordToDef setValue:@"lucky" forKey:@"fortuitous"];
        [wordToDef setValue:@"thrifty" forKey:@"frugal"];
        [wordToDef setValue:@"overused, cliched" forKey:@"hackneyed"];
        [wordToDef setValue:@"arrogant, condescending" forKey:@"haughty"];
        [wordToDef setValue:@"pleasure seeker" forKey:@"hedonist"];
        [wordToDef setValue:@"theory requiring proof" forKey:@"hypothesis"];
        [wordToDef setValue:@"rash, impulsive" forKey:@"impetuous"];
        [wordToDef setValue:@"to attribute to someone" forKey:@"impute"];
        [wordToDef setValue:@"unable to work together" forKey:@"incompatible"];
        [wordToDef setValue:@"trivial" forKey:@"inconsequential"];
        [wordToDef setValue:@"unavoidable, certain" forKey:@"inevitable"];
        [wordToDef setValue:@"honesty, decency" forKey:@"integrity"];
        [wordToDef setValue:@"fearless, adventurous" forKey:@"intrepid"];
        [wordToDef setValue:@"instinctive, untaught" forKey:@"intuitive"];
        [wordToDef setValue:@"joy, exultation" forKey:@"jubilation"];
        [wordToDef setValue:@"persuader of legislators" forKey:@"lobbyist"];
        [wordToDef setValue:@"long life" forKey:@"longevity"];
        [wordToDef setValue:@"ordinary, common" forKey:@"mundane"];
        [wordToDef setValue:@"calm, casual" forKey:@"nonchalant"];
        [wordToDef setValue:@"beginner" forKey:@"novice"];
        [wordToDef setValue:@"wealthy" forKey:@"opulent"];
        [wordToDef setValue:@"speaker" forKey:@"orator"];
        [wordToDef setValue:@"displaying wealth" forKey:@"ostentatious"];
        [wordToDef setValue:@"dried up" forKey:@"parched"];
        [wordToDef setValue:@"disloyal" forKey:@"perfidious"];
        [wordToDef setValue:@"talented beyond one's age" forKey:@"precocious"];
        [wordToDef setValue:@"pompous, self-important" forKey:@"pretentious"];
        [wordToDef setValue:@"to delay unnecessarily" forKey:@"procrastinate"];
        [wordToDef setValue:@"run-of-the-mill" forKey:@"prosaic"];
        [wordToDef setValue:@"wealth, success" forKey:@"prosperity"];
        [wordToDef setValue:@"inflammatory" forKey:@"provocative"];
        [wordToDef setValue:@"wise, careful, cautious" forKey:@"prudent"];
        [wordToDef setValue:@"irritable" forKey:@"querulous"];
        [wordToDef setValue:@"hateful" forKey:@"rancorous"];
        [wordToDef setValue:@"withdrawn, hermit-like" forKey:@"reclusive"];
        [wordToDef setValue:@"agreement after a quarrel" forKey:@"reconciliation"];
        [wordToDef setValue:@"state of being renewed" forKey:@"renovation"];
        [wordToDef setValue:@"quick to recover" forKey:@"resilient"];
        [wordToDef setValue:@"controlled, restricted" forKey:@"restrained"];
        [wordToDef setValue:@"profound respect" forKey:@"reverence"];
        [wordToDef setValue:@"wisdom" forKey:@"sagacity"];
        [wordToDef setValue:@"to observe carefully" forKey:@"scrutinize"];
        [wordToDef setValue:@"impulsive action" forKey:@"spontaneity"];
        [wordToDef setValue:@"phony, false" forKey:@"spurious"];
        [wordToDef setValue:@"meek" forKey:@"submissive"];
        [wordToDef setValue:@"to verify, confirm" forKey:@"substantiate"];
        [wordToDef setValue:@"elusive, sly, ambiguous" forKey:@"subtle"];
        [wordToDef setValue:@"lacking in depth" forKey:@"superficial"];
        [wordToDef setValue:@"more than enough" forKey:@"superfluous"];
        [wordToDef setValue:@"to end an activity" forKey:@"suppress"];
        [wordToDef setValue:@"secret, stealthy" forKey:@"surreptitious"];
        [wordToDef setValue:@"diplomatic, polite" forKey:@"tactful"];
        [wordToDef setValue:@"persistent, resolute" forKey:@"tenacious"];
        [wordToDef setValue:@"temporary, fleeting" forKey:@"transient"];
        [wordToDef setValue:@"respectable due to age" forKey:@"venerable"];
        [wordToDef setValue:@"to clear from blame" forKey:@"vindicate"];
        [wordToDef setValue:@"watchful, alert" forKey:@"wary"];
    }
    return self;
}

-(void) addWord:(NSString *) word AndDef:(NSString *) def
{
    [wordToDef setValue:def forKey:word];
}

-(NSString *) getDefOfWord:(NSString *) word
{
    return [wordToDef valueForKey:word];
}

-(NSUInteger) getWordCount
{
    return [wordToDef count];
}

-(NSArray *) getWordsArray
{
    return wordToDef.allKeys;
}

@end
