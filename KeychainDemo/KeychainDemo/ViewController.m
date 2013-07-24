//
//  ViewController.m
//  KeychainDemo
//
//  Created by Hyman Wang on 7/24/13.
//  Copyright (c) 2013 Hyman Wang. All rights reserved.
//

#import "ViewController.h"
#import "MyUserManeger.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *passwordLabel;
@property (weak, nonatomic) IBOutlet UITextField *passwordField;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)saveButtonClicked:(id)sender
{
    [MyUserManeger savePassWord:self.passwordField.text];
}

- (IBAction)showButtonClicked:(id)sender
{
    self.passwordLabel.text = [MyUserManeger readPassWord]; 
}

- (IBAction)deleteButtonClicked:(id)sender
{
    [MyUserManeger deletePassWord];
}

@end
