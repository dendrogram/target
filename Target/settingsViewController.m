//
//  settingsViewController.m
//  Target
//
//  Created by Jonathan Howell on 19/09/2014.
//  Copyright (c) 2014 Jonathan Howell. All rights reserved.
//

#import "settingsViewController.h"
#import "mySingleton.h" //for global variables

@interface settingsViewController ()

@end

@implementation settingsViewController

#pragma mark Inits

//@synthesize



- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
setTranslatesAutoresizingMaskIntoConstraints:NO;

    //look for switch changs on pressure and temperature

    //action:@selector(pressureChanged:) forControlEvents:UIControlEventValueChanged];

    //action:@selector(tempChanged:) forControlEvents:UIControlEventValueChanged];


    //self.pressureChange.tintColor       = [UIColor blackColor];
    //self.pressureChange.backgroundColor = [UIColor redColor]; //a bit off-putting


    //set the delegates or text did start/end will not work
    //labLocationTxt.delegate = self;
    //one for each
}

-(void)viewDidAppear:(BOOL)animated{
    // set up link to singleton, load on open
    //mySingleton *singleton      = [mySingleton sharedSingleton];

    //FEO2Txt.text                =   [NSString stringWithFormat:@"%.2Lf",singleton.feo2]             ;

}

-(void)viewDidDisappear:(BOOL)animated{
    // set up link to singleton, save on exit
    //mySingleton *singleton      =  [mySingleton sharedSingleton];

    //singleton.feo2              =  [FEO2Txt.text doubleValue];

    //singleton.sampTime          = [sampTimeTxt.text doubleValue];
}

//Pressure switch changed, so recalculate and update textfield
- (void)pressureChanged:(UISwitch *)switchState
{
    // needs work to ensure both readings are put in correctly
    //long double pressure;

    //mySingleton *singleton = [mySingleton sharedSingleton];

    if ([switchState isOn]) {
        //switch is on = mmHg
        //press.text=@"mmHg";

        //pressure = [labPressureTxt.text floatValue];

        //labPressureTxt.text = [NSString stringWithFormat:@"%.4Lf", pressure * 0.75218];

        //singleton.labPressure_mmHg = [labPressureTxt.text doubleValue];


    } else {
        //switch is off = mBar
        //press.text=@"mBar";

        //pressure = [labPressureTxt.text floatValue];

        //labPressureTxt.text = [NSString stringWithFormat:@"%.4Lf", pressure / 0.75218];

        //singleton.labPressure_mmHg = [labPressureTxt.text doubleValue];

    }
}



-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    //used to clear keyboard if screen touched
    // NSLog(@"Touches began with this event");
    [self.view endEditing:YES];

    [super touchesBegan:touches withEvent:event];
}

//one block for each input var to colour the boxes and test the validity

-(void)textFieldDidBeginEditing:(UITextField *)textField{
    //if(textField==self->labLocationTxt){
    //labLocationTxt.backgroundColor = [UIColor greenColor];
    //textField.frame = CGRectMake(textField.frame.origin.x, (textField.frame.origin.y), textField.frame.size.width, textField.frame.size.height);
    // int oft=textField.frame.origin.y-190;
    //[self keyBoardAppeared:oft];
    //}
}

-(void)textFieldDidEndEditing:(UITextField *) textField {

    //move the screen back to the original place
    [self keyBoardDisappeared:0];

    //convert strings to floats, check and write back strings.

    //labLocationTxt.backgroundColor = [UIColor whiteColor];


    //some validation examples
     /* if (labPressure_mmHg>1000) {
     labPressureTxt.textColor=[UIColor redColor];
     labPressure_mmHg=1000;
     labPressureTxt.text=@"1000.00";
     labPressureTxt.backgroundColor = [UIColor yellowColor];
     }

     VEATPSTxt.textColor=[UIColor blackColor];
     if (VEATPS<0.000) {
     VEATPSTxt.textColor=[UIColor redColor];
     VEATPS=0.000;
     VEATPSTxt.text=@"0.000";
     VEATPSTxt.backgroundColor = [UIColor yellowColor];
     }

     if (VEATPS>1.000) {
     VEATPSTxt.textColor=[UIColor redColor];
     VEATPS=1.000;
     VEATPSTxt.text=@"1.000";
     VEATPSTxt.backgroundColor = [UIColor yellowColor];
     }
     */
}

-(void) keyBoardAppeared :(int)oft
{
    //stop clashes when the kb appears
    CGRect frame = self.view.frame;
    //oft= the y of the text field?  make some code to find it
    //NSLog(@"oring y = %i",oft);
    [UIView animateWithDuration:1.0
                          delay:0.5
                        options: UIViewAnimationOptionCurveEaseOut
                     animations:^{
                         self.view.frame = CGRectMake(frame.origin.x, -oft, frame.size.width, frame.size.height);
                     }
                     completion:^(BOOL finished){
                     }];
}

-(void) keyBoardDisappeared :(int)oft
{
    //put the kb away and return screen to normal pos
    CGRect frame = self.view.frame;
    //oft= the y of the text field?  make some code to find it

    [UIView animateWithDuration:1.0
                          delay:0.5
                        options: UIViewAnimationOptionCurveEaseOut
                     animations:^{
                         self.view.frame = CGRectMake(frame.origin.x, oft, frame.size.width, frame.size.height);
                     }
                     completion:^(BOOL finished){
                     }];
}

@end
