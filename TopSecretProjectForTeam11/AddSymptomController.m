//
//  AddSymptomController.m
//  KevinTest
//
//  Created by App Jam on 11/14/13.
//  Copyright (c) 2013 App Jam. All rights reserved.
//

#import "AddSymptomController.h"
#import "SymptomObject.h"

@interface AddSymptomController ()

@end

@implementation AddSymptomController

- (id)init
{
    self = [super init];
    if (self) {
        // Custom initialization
        self.view.backgroundColor = [UIColor whiteColor];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    self.symptom = [[SymptomObject alloc] init];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)symtomsText:(UITextField *)sender {
    _symptom.symptom = [[NSString alloc]initWithString:sender.text];
}
- (IBAction)painSlider:(UISlider *)sender {
    _symptom.pain = sender.value;
    self.painNumber.text = [[NSString alloc] initWithFormat:@"%d", (int)sender.value];
    
}
@end
