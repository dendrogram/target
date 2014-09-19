//
//  mySingleton.m
//  Target
//
//  Created by Jonathan Howell on 19/09/2014.
//  Copyright (c) 2014 Jonathan Howell. All rights reserved.
//

#import "mySingleton.h"

static mySingleton * sharedSingleton = nil;

@implementation mySingleton {

}

//note, some of these vars unused from other apps, left for reference and future use
// eg for all in .h
// @synthesize counter;

//Counters
@synthesize
testDate,
testTime,
archerName,
email,
labLocation,
addedToResults,
dataCompleted,
resultStrings,

versionNumber
;

#pragma mark -
#pragma mark Singleton Methods

+ (mySingleton *) sharedSingleton {
    if(sharedSingleton==nil) {
        sharedSingleton = [[super allocWithZone:NULL]init];
    }
    return sharedSingleton;
}

+ (id)allocWithZone:(NSZone *) zone {
    return [self sharedSingleton];
}

- (id)copyWithZone:(NSZone *) zone {
    return self;
}

- (id) init {
    if(self = [super init]) {

        //initialise with values, eg
        //linewidth=1;

        addedToResults     = NO;
        dataCompleted      = NO;

        labLocation        = @"Alsager Cranberry Road Field";

        archerName         = @"Rachel Howell";
        testDate           = @"";
        testTime           = @"";
        resultStrings      = @"";

        resultStrings      = @"";
        versionNumber      = @"";

    }
    return self;
}
@end

