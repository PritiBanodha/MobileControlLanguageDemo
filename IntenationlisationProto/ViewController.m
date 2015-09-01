//
//  ViewController.m
//  IntenationlisationProto
//
//  Created by Glam India on 26/06/15.
//  Copyright (c) 2015 Glam India. All rights reserved.
//

#import "ViewController.h"
#import "LocalizeHelper.h"

@interface ViewController ()
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.titleTxt.text = AMLocalizedString(@"titletext", nil);

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)changeLanguage:(id)sender
{
    switch (((UIButton *)sender).tag) {
        case 0:
            LocalizationSetLanguage(@"ja");
            break;
        case 1:
            LocalizationSetLanguage(@"fr");
            break;
        case 2:
            LocalizationSetLanguage(@"en");
            break;
        default:
            break;
    }
    self.titleTxt.text = AMLocalizedString(@"titletext", nil);
}


@end
