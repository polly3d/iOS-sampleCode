//
//  ViewController.m
//  HelloWorld
//
//  Created by wang on 15/9/23.
//  Copyright (c) 2015年 wang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UITextField *textfield;
@property (nonatomic) NSString *string;

@end

@implementation ViewController

- (void)updateString
{
	self.string = textfield.text;
	label.text = self.string;
}

- (BOOL)textFieldShouldReturn:(UITextField *)theTextField {
    // When the user presses return, take focus away from the text field so that the keyboard is dismissed.
    if (theTextField == textField) {
        [textField resignFirstResponder];
        // Invoke the method that changes the greeting.
        [self updateString];
    }
    return YES;
}
 
 
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    // Dismiss the keyboard when the view outside the text field is touched.
    [textField resignFirstResponder];
    // Revert the text field to the previous value.
    textField.text = self.string; 
    [super touchesBegan:touches withEvent:event];
}

- (void)viewDidLoad {
    [super viewDidLoad];

    textfield.clearButtonMode = UITextFieldViewModeWhileEditing;
    label.text = textfield.placeholder;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
