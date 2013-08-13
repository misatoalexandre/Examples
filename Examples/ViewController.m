//
//  ViewController.m
//  Examples
//
//  Created by Misato Tina Alexandre on 7/4/13.
//  Copyright (c) 2013 Misato Tina Alexandre. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)button_Clicked:(UIButton *)sender {
   
    /* 
    //Get the buttons' titles.
    NSString *title =[sender titleForState:UIControlStateNormal];
    //format text to include each button's title stored title pointer. 
    NSString *plainText=[NSString stringWithFormat:@"%@ button pressed.", title];
    //set label to display plainText. 
    self.Label.text=plainText;
     */
    /*Another nested version.
     self.Label.text=[NSString stringWithFormat:@"%@ button pressed",[sender titleForState:UIControlStateNormal]];;
     */

    //Adding some style using NSAttributedString
    NSString *title =[sender titleForState:UIControlStateNormal];
    //format text to include each button's title stored title pointer.
    NSString *plainText=[NSString stringWithFormat:@"%@ button pressed.", title];
    
    //Tell the complier that you'll create attributedString using plainText. Meaning plainText will be added some stying. 
    NSMutableAttributedString *styledText=[[NSMutableAttributedString alloc]initWithString:plainText];
    //Create a dictionary to hold the attributes we want to apply to our string. 
    NSDictionary *attributes=@{NSFontAttributeName: [UIFont boldSystemFontOfSize:self.Label.font.pointSize]};
    //Specify where in the text you want to apply this attribute.In this case, only the title that will have styling.
    NSRange nameRange=[plainText rangeOfString:title];
    
    //Now applying the attributes and nameRange to AttributedString instance, styledText.
    [styledText setAttributes:attributes range:nameRange];
    self.Label.attributedText =styledText;
    
    
    
    
    
    
    
    
    //set label to display plainText.
    //self.Label.text=plainText;
    
    
       
}
@end
