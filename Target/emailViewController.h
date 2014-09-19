//
//  emailViewController.h
//  Target
//
//  Created by Jonathan Howell on 19/09/2014.
//  Copyright (c) 2014 Jonathan Howell. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MFMailComposeViewController.h>

#define kEmail  @"emailAddress"
#define kTester @"testerName"

@interface emailViewController : UIViewController <MFMailComposeViewControllerDelegate>
{
    IBOutlet UILabel     * statusMessageLab;
    //text views for text displays ie results or help screens

    // for file manager
    NSFileManager * fileMgr;
    NSString      * homeDir;
    NSString      * filename;
    NSString      * filepath;

    // for calculations and functions
    NSDate        * startDate;
    NSDate        * testDate;


    UILabel * datelbl;
    UILabel * timelbl;
    UILabel * emaillbl;

}

//file ops stuff
@property(nonatomic,retain) NSFileManager * fileMgr;
@property(nonatomic,retain) NSString      * homeDir;
@property(nonatomic,retain) NSString      * filename;
@property(nonatomic,retain) NSString      * filepath;

//dates
@property (nonatomic, copy) NSDate * startDate;
@property (nonatomic, copy) NSDate * testDate;

//var label outlets
@property (nonatomic, strong) IBOutlet UILabel * datelbl;
@property (nonatomic, strong) IBOutlet UILabel * timelbl;
@property (nonatomic, strong) IBOutlet UILabel * emaillbl;

@property (nonatomic, strong) IBOutlet UILabel * subjectlbl;


// button press to send the mail
-(IBAction)showEmail:(id)sender;
-(void)mailComposeController:(MFMailComposeViewController *)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError *) error;
-(NSString *) GetDocumentDirectory;
-(NSString *) setFilename;
-(void) WriteToStringFile:(NSMutableString *)textToWrite;
-(void)calculateStats;

@end
