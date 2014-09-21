//
//  ViewController.h
//  Target
//
//  Created by Jonathan Howell on 14/09/2014.
//  Copyright (c) 2014 Jonathan Howell. All rights reserved.
//

#import <UIKit/UIKit.h>

#define kEmail      @"emailAddress"
#define kArcher     @"archerName"
#define kVersion    @"version"

@interface ViewController : UIViewController
{
    int endsPerMatch;
    int arrowsPerEnd;
    int endsPerSet;
    NSString *bowType;
    NSString *date;
    NSString *name;
    NSString *location;
    int distance;
    NSString *round;
    float sightElev;
    float sightWindage;
    float sightExtn;
    NSString *sightType;
    int *arrowLength;
    int bowPounds;
    int bowLength;
    NSString *windDirection; //clock wrt 12
    NSString *email;
    int runningTotal[6];
    int setTotal[10];
    int EndTotal[3][6];
    float averagePerArrow;
    int setNo;
    int endNo;
    int golds[3][6];
    int misses[3][6];
    int hits[3][6];
    int aTotal;
    int xTotal;
    int mTotal;
    int total[10];
    int shot;
    int arrowShot;
    int arrow[144];
    NSString *r[6];
}

@property (strong, nonatomic) IBOutlet UISwitch *impMetSW;

@property (strong, nonatomic) IBOutlet UIButton *xBTN;
@property (strong, nonatomic) IBOutlet UIButton *k10BTN;
@property (strong, nonatomic) IBOutlet UIButton *k9BTN;
@property (strong, nonatomic) IBOutlet UIButton *k8BTN;
@property (strong, nonatomic) IBOutlet UIButton *k7BTN;
@property (strong, nonatomic) IBOutlet UIButton *k6BTN;
@property (strong, nonatomic) IBOutlet UIButton *k5BTN;
@property (strong, nonatomic) IBOutlet UIButton *k4BTN;
@property (strong, nonatomic) IBOutlet UIButton *k3kBTN;
@property (strong, nonatomic) IBOutlet UIButton *k2BTN;
@property (strong, nonatomic) IBOutlet UIButton *k1BTN;
@property (strong, nonatomic) IBOutlet UIButton *mBTN;

- (IBAction)deleteAllDataBTN:(id)sender;
- (IBAction)impMetSW:(id)sender;

- (IBAction)xBTN:(id)sender;
- (IBAction)x10BTN:(id)sender;
- (IBAction)x9BTN:(id)sender;
- (IBAction)x8BTN:(id)sender;
- (IBAction)x7BTN:(id)sender;
- (IBAction)x6BTN:(id)sender;
- (IBAction)x5BTN:(id)sender;
- (IBAction)x4BTN:(id)sender;
- (IBAction)x3BTN:(id)sender;
- (IBAction)x2BTN:(id)sender;
- (IBAction)x1BTN:(id)sender;
- (IBAction)mBTN:(id)sender;


@end

