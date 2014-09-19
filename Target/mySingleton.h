//
//  mySingleton.h
//  Target
//
//  Created by Jonathan Howell on 19/09/2014.
//  Copyright (c) 2014 Jonathan Howell. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface mySingleton : NSObject {

    NSString       * resultsStrings;

    BOOL     addedToResults;
    BOOL     dataCompleted;

    //subject and results
    NSString * archerName;
    NSString * testDate;
    NSString * testTime;
    NSString * resultStrings;
    NSString * versionNumber;
    NSString * email;

    NSString * labLocation;

    long double subWt;
}

//eg defs pt2
@property (nonatomic) int  counter;

@property (nonatomic, retain) NSMutableArray * cardReactionTimeResult;

//doubles
@property (nonatomic) long double subWt;

//Strings
@property (nonatomic, retain) NSString * email;

@property (nonatomic, retain) NSString * labLocation;

@property (nonatomic, retain) NSString * resultStrings;
@property (nonatomic, retain) NSString * archerName;
@property (nonatomic, retain) NSString * testDate;
@property (nonatomic, retain) NSString * testTime;
@property (nonatomic, retain) NSString * versionNumber;

//Flags BOOL
@property (nonatomic) BOOL addedToResults;
@property (nonatomic) BOOL dataCompleted;


//set up singleton shared

+(mySingleton *)sharedSingleton;

@end
