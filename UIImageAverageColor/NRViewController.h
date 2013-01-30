//
//  NRViewController.h
//  AvgColor
//
//  Created by nikolai on 28.08.12.
//  Copyright (c) 2012 Savoy Software. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NRViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *averageColorLabel;
@property (weak, nonatomic) IBOutlet UILabel *mergedColorLabel;
@property (weak, nonatomic) IBOutlet UILabel *resultLabel;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

- (IBAction)testAverage:(UIBarButtonItem *)sender;
- (IBAction)testMerge:(UIBarButtonItem *)sender;

@end
