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

#pragma mark - Lifecycle

- (void)viewDidLoad {
    [super viewDidLoad];
    self.textfield.clearButtonMode = UITextFieldViewModeWhileEditing;
    self.label.text = self.textfield.placeholder;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - normalMethod

- (void)updateString
{
	self.string = self.textfield.text;
    NSLog(@"%@",self.string);
	self.label.text = self.string;
}

#pragma mark - protocol

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    if(self.textfield == textField)
    {
        [textField resignFirstResponder];
        [self updateString];
    }
    return YES;
}


- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    // Dismiss the keyboard when the view outside the text field is touched.
    [self.textfield resignFirstResponder];
    // Revert the text field to the previous value.
    self.textfield.text = self.string;
    [super touchesBegan:touches withEvent:event];
}

@end
