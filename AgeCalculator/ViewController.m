//
//  ViewController.m
//  AgeCalculator
//
//  Created by Jonathan Archille on 1/24/17.
//  Copyright © 2017 The Iron Yard. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
    @property (weak, nonatomic) IBOutlet UILabel *resultLabel;
    @property (weak, nonatomic) IBOutlet UIDatePicker *birthdatePicker;
@end

@implementation ViewController
    
- (void)viewDidLoad {
    [super viewDidLoad];
    self.birthdatePicker.maximumDate = [NSDate date];
}
    
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)calculateTapped:(UIButton *)sender {
    
    NSDate* now = [NSDate date];
    NSDate* birthdate = self.birthdatePicker.date;
    NSDateComponents* ageComponents =  [[NSCalendar currentCalendar] components:NSCalendarUnitYear fromDate: birthdate toDate: now options:0];
    self.resultLabel.text = [NSString stringWithFormat:@"Congrats, you are %ld years old!", (long)[ageComponents year]];
}
    


@end
