//
//  ViewController.m
//  Target
//
//  Created by Jonathan Howell on 14/09/2014.
//  Copyright (c) 2014 Jonathan Howell. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{

}
@end

@implementation ViewController{

}
@synthesize
xBTN,
xLBL,
k10BTN,
k10LBL,
k1BTN,
k1LBL,
k2BTN,
k2LBL,
k3kBTN,
k3LBL,
k4BTN,
k4LBL,
k5BTN,
k5LBL,
k6BTN,
k6LBL,
k7BTN,
k7LBL,
k8BTN,
k8LBL,
k9BTN,
k9LBL,
mBTN,
mLBL,
impMetSW,
aveLBL,
run1Tot,
run2Tot,
run3Tot,
run4Tot,
run5Tot,
run6Tot,
s10LBL,
s10Tot,
s11LBL,
s11Tot,
s12LBL,
s12Tot,
s1LBL,
s2LBL,
s2Tot,
s3LBL,
s3Tot,
s4LBL,
s4Tot,
s5LBL,
s5Tot,
s6LBL,
s6Tot,
s7LBL,
s7Tot,
s8LBL,
s8Tot,
s9LBL,
s9Tot,
s1Tot,
e1a,
e1m,
e1Tot,
e1x,
e2a,
e2m,
e2Tot,
e2x,
e3a,
e3m,
e3Tot,
e3x,
e4a,
e4m,
e4Tot,
e4x,
e5a,
e5m,
e5Tot,
e5x,
e6a,
e6m,
e6Tot,
e6x
;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    shot=1;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (IBAction)deleteAllDataBTN:(id)sender {
    for(int count=0;count<144;count++){
        arrow[count]=0;
    }
}

-(void)updateResults{
    //set1
    setNo=1;
    endNo=1;
    if(shot>=0 && shot<=7){
        set1Total=0;
        End1Total=0;
        s1LBL.text=@"";
        s1Tot.text=0;
        run1Tot=0;
        xTotal=0;
        mTotal=0;
        a1=0;
        m1=0;
        x1=0;

        r1=[NSString stringWithFormat:@"%d",arrow[1]];
            if(arrow[1]==11){
                r1=@"X";
                xTotal=xTotal+1;
                x1=x1+1;
            }
            else if(arrow[1]==12){
                r1=@"M";
                mTotal=mTotal+1;
                m1=m1+1;
            }
        r2=[NSString stringWithFormat:@"%d",arrow[2]];
        if(arrow[2]==11){
            r1=@"X";
            xTotal=xTotal+1;
            x1=x1+1;
        }
        else if(arrow[2]==12){
            r2=@"M";
            mTotal=mTotal+1;
            m1=m1+1;
        }
        r3=[NSString stringWithFormat:@"%d",arrow[3]];
        if(arrow[3]==11){
            r3=@"X";
            xTotal=xTotal+1;
            x1=x1+1;
        }
        else if(arrow[3]==12){
            r3=@"M";
            mTotal=mTotal+1;
            m1=m1+1;
        }
        r4=[NSString stringWithFormat:@"%d",arrow[4]];
        if(arrow[4]==11){
            r4=@"X";
            xTotal=xTotal+1;
            x1=x1+1;
        }
        else if(arrow[4]==12){
            r4=@"M";
            mTotal=mTotal+1;
            m1=m1+1;
        }
        r5=[NSString stringWithFormat:@"%d",arrow[5]];
        if(arrow[5]==11){
            r5=@"X";
            xTotal=xTotal+1;
            x1=x1+1;
        }
        else if(arrow[5]==12){
            r5=@"M";
            mTotal=mTotal+1;
            m1=m1+1;
        }
        r6=[NSString stringWithFormat:@"%d",arrow[6]];
        if(arrow[6]==11){
            r6=@"X";
            xTotal=xTotal+1;
            x1=x1+1;
        }
        else if(arrow[6]==12){
            r6=@"M";
            mTotal=mTotal+1;
            m1=m1+1;
        }

        for(int t=1;t<7;t++){
                arrowShot=arrow[t];
                if (arrow[t]==11){arrowShot=10;}
                if (arrow[t]==12){arrowShot=0;}
                set1Total=set2Total+arrowShot;
                End1Total=End1Total+arrowShot;
                total1=total1+arrow[t];
                a1=a1+1;
        }
            s1LBL.text=[NSString stringWithFormat:@"%@ %@ %@ %@ %@ %@", r1,r2,r3,r4,r5,r6];
        a1=shot-(m1+x1)-1;
        e1a.text=[NSString stringWithFormat:@"%d",a1];
        e1m.text=[NSString stringWithFormat:@"%d",m1];
        e1x.text=[NSString stringWithFormat:@"%d",x1];
        s1Tot.text=[NSString stringWithFormat:@"%d",set1Total];
        run1Tot.text=[NSString stringWithFormat:@"%d",total1];
    }
        //set2
        setNo=2;
        endNo=1;
        if(shot>=7 && shot<=13){

            set2Total=0;
            s2LBL.text=@"";
            s2Tot.text=0;

            r1=[NSString stringWithFormat:@"%d",arrow[7]];
            if(arrow[7]==11){
                r1=@"X";
                xTotal=xTotal+1;
                x1=x1+1;
            }
            else if(arrow[7]==12){
                r1=@"M";
                mTotal=mTotal+1;
                m1=m1+1;
            }
            r2=[NSString stringWithFormat:@"%d",arrow[8]];
            if(arrow[8]==11){
                r1=@"X";
                xTotal=xTotal+1;
                x1=x1+1;
            }
            else if(arrow[8]==12){
                r2=@"M";
                mTotal=mTotal+1;
                m1=m1+1;
            }
            r3=[NSString stringWithFormat:@"%d",arrow[9]];
            if(arrow[9]==11){
                r3=@"X";
                xTotal=xTotal+1;
                x1=x1+1;
            }
            else if(arrow[9]==12){
                r3=@"M";
                mTotal=mTotal+1;
                m1=m1+1;
            }
            r4=[NSString stringWithFormat:@"%d",arrow[10]];
            if(arrow[10]==11){
                r4=@"X";
                xTotal=xTotal+1;
                x1=x1+1;
            }
            else if(arrow[10]==12){
                r4=@"M";
                mTotal=mTotal+1;
                m1=m1+1;
            }
            r5=[NSString stringWithFormat:@"%d",arrow[11]];
            if(arrow[11]==11){
                r5=@"X";
                xTotal=xTotal+1;
                x1=x1+1;
            }
            else if(arrow[11]==12){
                r5=@"M";
                mTotal=mTotal+1;
                m1=m1+1;
            }
            r6=[NSString stringWithFormat:@"%d",arrow[12]];
            if(arrow[12]==11){
                r6=@"X";
                xTotal=xTotal+1;
                x1=x1+1;
            }
            else if(arrow[12]==12){
                r6=@"M";
                mTotal=mTotal+1;
                m1=m1+1;

            }
            
            for(int t=7;t<13;t++){
                arrowShot=arrow[t];
                if (arrow[t]==11){arrowShot=10;}
                if (arrow[t]==12){arrowShot=0;}
                set2Total=set2Total+arrowShot;
                End1Total=End1Total+arrowShot;
                total1=total1+arrow[t];
                a1=a1+1;
            }
            s2LBL.text=[NSString stringWithFormat:@"%@ %@ %@ %@ %@ %@", r1,r2,r3,r4,r5,r6];
            a1=shot-(m1+x1);
            e1a.text=[NSString stringWithFormat:@"%d",a1];
            e1m.text=[NSString stringWithFormat:@"%d",m1];
            e1x.text=[NSString stringWithFormat:@"%d",x1];
            s2Tot.text=[NSString stringWithFormat:@"%d",set2Total];
            e1Tot.text=[NSString stringWithFormat:@"%d",set2Total+set1Total];
            run1Tot.text=[NSString stringWithFormat:@"%d",total1];
    }

    xLBL.text  = [NSString stringWithFormat:@"%d", xTotal];
    k10LBL.text= [NSString stringWithFormat:@"%d", total10];
    k9LBL.text = [NSString stringWithFormat:@"%d", total9];
    k8LBL.text = [NSString stringWithFormat:@"%d", total8];
    k7LBL.text = [NSString stringWithFormat:@"%d", total7];
    k6LBL.text = [NSString stringWithFormat:@"%d", total6];
    k5LBL.text = [NSString stringWithFormat:@"%d", total5];
    k4LBL.text = [NSString stringWithFormat:@"%d", total4];
    k3LBL.text = [NSString stringWithFormat:@"%d", total3];
    k2LBL.text = [NSString stringWithFormat:@"%d", total2];
    k1LBL.text = [NSString stringWithFormat:@"%d", total1];
    mLBL.text  = [NSString stringWithFormat:@"%d", mTotal];

    average=End1Total/shot;
    aveLBL.text=[NSString stringWithFormat:@"%f",average];
}

- (IBAction)xBTN:(id)sender {
    arrow[shot]=11;
    shot=shot+1;
    xTotal=xTotal+1;
    [self updateResults];
}
- (IBAction)x10BTN:(id)sender{
arrow[shot]=10;
    shot=shot+1;
    total10=total10+1;
    [self updateResults];
}
- (IBAction)x9BTN:(id)sender{
arrow[shot]=9;
    shot=shot+1;
    total9=total9+1;
    [self updateResults];
}
- (IBAction)x8BTN:(id)sender{
arrow[shot]=8;
    shot=shot+1;
    total8=total8+1;
    [self updateResults];
}
- (IBAction)x7BTN:(id)sender{
arrow[shot]=7;
    shot=shot+1;
    total7=total7+1;
    [self updateResults];
}
- (IBAction)x6BTN:(id)sender{
arrow[shot]=6;
    shot=shot+1;
    total6=total6+1;
    [self updateResults];
}
- (IBAction)x5BTN:(id)sender{
arrow[shot]=5;
    shot=shot+1;
    total5=total5+1;
    [self updateResults];
}
- (IBAction)x4BTN:(id)sender{
arrow[shot]=4;
    shot=shot+1;
    total4=total4+1;
    [self updateResults];
}
- (IBAction)x3BTN:(id)sender{
arrow[shot]=3;
    shot=shot+1;
    total3=total3+1;
    [self updateResults];
}
- (IBAction)x2BTN:(id)sender{
arrow[shot]=2;
    shot=shot+1;
    total2=total2+1;
    [self updateResults];
}
- (IBAction)x1BTN:(id)sender{
arrow[shot]=1;
    shot=shot+1;
    total1=total1+1;
    [self updateResults];
}
- (IBAction)mBTN:(id)sender{
arrow[shot]=12;
    shot=shot+1;
    mTotal=mTotal+1;
    [self updateResults];
}
- (IBAction)impMetSW:(id)sender {
    if(impMetSW.on==true){

        k10BTN.hidden=true;
        k10LBL.hidden=true;

        k8BTN.hidden=true;
        k8LBL.hidden=true;

        k6BTN.hidden=true;
        k6LBL.hidden=true;

        k4BTN.hidden=true;
        k4LBL.hidden=true;

        k2BTN.hidden=true;
        k2LBL.hidden=true;

    }else{

        k10BTN.hidden=false;
        k10LBL.hidden=false;

        k8BTN.hidden=false;
        k8LBL.hidden=false;

        k6BTN.hidden=false;
        k6LBL.hidden=false;

        k4BTN.hidden=false;
        k4LBL.hidden=false;

        k2BTN.hidden=false;
        k2LBL.hidden=false;
    }
}
@end
