//
//  ViewController.h
//  IntenationlisationProto
//
//  Created by Glam India on 26/06/15.
//  Copyright (c) 2015 Glam India. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BundleLocalization.h"

@interface ViewController : UIViewController <BundleLanguageChangedProtocol>

@property (nonatomic, weak) IBOutlet UILabel *titleTxt;

-(IBAction)changeLanguage:(id)sender;
@end

