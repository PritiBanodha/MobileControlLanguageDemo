//
//  ViewController.m
//  IntenationlisationProto
//
//  Created by Glam India on 26/06/15.
//  Copyright (c) 2015 Glam India. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.titleTxt.text = NSLocalizedString(@"titletext", nil);

    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(handleLanguageChange)
                                                 name:kCNLanguageChangedNotification
                                               object:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)changeLanguage:(id)sender
{
    switch (((UIButton *)sender).tag) {
        case 0:
            [[BundleLocalization sharedInstance] setLanguage:@"ja"];
            break;
        case 1:
            [[BundleLocalization sharedInstance] setLanguage:@"fr"];
            break;
        case 2:
            [[BundleLocalization sharedInstance] setLanguage:@"en"];
            break;
        default:
            break;
    }
}


- (void) handleLanguageChange
{
    self.titleTxt.text = NSLocalizedString(@"titletext", nil);
}


@end
