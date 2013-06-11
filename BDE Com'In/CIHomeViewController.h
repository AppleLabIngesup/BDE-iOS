//
//  CIHomeViewController.h
//  BDE Com'In
//
//  Created by Hellsingblack on 10/06/13.
//  Copyright (c) 2013 Ingesup. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CIHomeViewController : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *titleHome;
@property (strong, nonatomic) IBOutlet UILabel *date;
@property (strong, nonatomic) IBOutlet UIImageView *imageHome;
@property (strong, nonatomic) IBOutlet UITextView *contentHome;

@property (strong, nonatomic) IBOutlet UIView *cellViewHome;

@end
