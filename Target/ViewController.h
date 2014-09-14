//
//  ViewController.h
//  Target
//
//  Created by Jonathan Howell on 14/09/2014.
//  Copyright (c) 2014 Jonathan Howell. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    int runningTotal;
    int set1Total;
    int set2Total;
    int EndTotal;
    Float32 average;
    int setNo;
    int endNo;
    int x;
    int m;
    int a;
    int aTotal;
    int xTotal;
    int mTotal;
    int shot;
    int arrow[144];
}
- (IBAction)deleteAllDataBTN:(id)sender;

@property (strong, nonatomic) IBOutlet UISwitch *impMetSW;
- (IBAction)impMetSW:(id)sender;

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

@property (strong, nonatomic) IBOutlet UILabel *xLBL;
@property (strong, nonatomic) IBOutlet UILabel *k10LBL;
@property (strong, nonatomic) IBOutlet UILabel *k9LBL;
@property (strong, nonatomic) IBOutlet UILabel *k8LBL;
@property (strong, nonatomic) IBOutlet UILabel *k7LBL;
@property (strong, nonatomic) IBOutlet UILabel *k6LBL;
@property (strong, nonatomic) IBOutlet UILabel *k5LBL;
@property (strong, nonatomic) IBOutlet UILabel *k4LBL;
@property (strong, nonatomic) IBOutlet UILabel *k3LBL;
@property (strong, nonatomic) IBOutlet UILabel *k2LBL;
@property (strong, nonatomic) IBOutlet UILabel *k1LBL;
@property (strong, nonatomic) IBOutlet UILabel *mLBL;

@property (strong, nonatomic) IBOutlet UILabel *aveLBL;
@property (strong, nonatomic) IBOutlet UILabel *s1LBL;
@property (strong, nonatomic) IBOutlet UILabel *s2LBL;
@property (strong, nonatomic) IBOutlet UILabel *s1Tot;
@property (strong, nonatomic) IBOutlet UILabel *s2Tot;
@property (strong, nonatomic) IBOutlet UILabel *e1Tot;
@property (strong, nonatomic) IBOutlet UILabel *e1a;
@property (strong, nonatomic) IBOutlet UILabel *e1m;
@property (strong, nonatomic) IBOutlet UILabel *e1x;
@property (strong, nonatomic) IBOutlet UILabel *run1Tot;

@property (strong, nonatomic) IBOutlet UILabel *s3LBL;
@property (strong, nonatomic) IBOutlet UILabel *s4LBL;
@property (strong, nonatomic) IBOutlet UILabel *s3Tot;
@property (strong, nonatomic) IBOutlet UILabel *s4Tot;
@property (strong, nonatomic) IBOutlet UILabel *e2Tot;
@property (strong, nonatomic) IBOutlet UILabel *e2a;
@property (strong, nonatomic) IBOutlet UILabel *e2m;
@property (strong, nonatomic) IBOutlet UILabel *e2x;
@property (strong, nonatomic) IBOutlet UILabel *run2Tot;

@property (strong, nonatomic) IBOutlet UILabel *s5LBL;
@property (strong, nonatomic) IBOutlet UILabel *s6LBL;
@property (strong, nonatomic) IBOutlet UILabel *s5Tot;
@property (strong, nonatomic) IBOutlet UILabel *s6Tot;
@property (strong, nonatomic) IBOutlet UILabel *e3Tot;
@property (strong, nonatomic) IBOutlet UILabel *e3a;
@property (strong, nonatomic) IBOutlet UILabel *e3m;
@property (strong, nonatomic) IBOutlet UILabel *e3x;
@property (strong, nonatomic) IBOutlet UILabel *run3Tot;

@property (strong, nonatomic) IBOutlet UILabel *s7LBL;
@property (strong, nonatomic) IBOutlet UILabel *s8LBL;
@property (strong, nonatomic) IBOutlet UILabel *s7Tot;
@property (strong, nonatomic) IBOutlet UILabel *s8Tot;
@property (strong, nonatomic) IBOutlet UILabel *e4Tot;
@property (strong, nonatomic) IBOutlet UILabel *e4a;
@property (strong, nonatomic) IBOutlet UILabel *e4m;
@property (strong, nonatomic) IBOutlet UILabel *e4x;
@property (strong, nonatomic) IBOutlet UILabel *run4Tot;

@property (strong, nonatomic) IBOutlet UILabel *s9LBL;
@property (strong, nonatomic) IBOutlet UILabel *s10LBL;
@property (strong, nonatomic) IBOutlet UILabel *s9Tot;
@property (strong, nonatomic) IBOutlet UILabel *s10Tot;
@property (strong, nonatomic) IBOutlet UILabel *e5Tot;
@property (strong, nonatomic) IBOutlet UILabel *e5a;
@property (strong, nonatomic) IBOutlet UILabel *e5m;
@property (strong, nonatomic) IBOutlet UILabel *e5x;
@property (strong, nonatomic) IBOutlet UILabel *run5Tot;

@property (strong, nonatomic) IBOutlet UILabel *s11LBL;
@property (strong, nonatomic) IBOutlet UILabel *s12LBL;
@property (strong, nonatomic) IBOutlet UILabel *s11Tot;
@property (strong, nonatomic) IBOutlet UILabel *s12Tot;
@property (strong, nonatomic) IBOutlet UILabel *e6Tot;
@property (strong, nonatomic) IBOutlet UILabel *e6a;
@property (strong, nonatomic) IBOutlet UILabel *e6m;
@property (strong, nonatomic) IBOutlet UILabel *e6x;
@property (strong, nonatomic) IBOutlet UILabel *run6Tot;
@end

