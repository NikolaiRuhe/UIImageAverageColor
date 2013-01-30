//
//  NRViewController.m
//  AvgColor
//
//  Created by nikolai on 28.08.12.
//  Copyright (c) 2012 Savoy Software. All rights reserved.
//

#import "NRViewController.h"
#import "UIImageAverageColorAddition.h"


@implementation NRViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

	CGFloat red, green, blue;

	self.averageColorLabel.backgroundColor = [self.imageView.image averageColor];
	[self.averageColorLabel.backgroundColor getRed:&red green:&green blue:&blue alpha:NULL];
	self.averageColorLabel.text = [NSString stringWithFormat:@"average color: %.2f %.2f %.2f", red, green, blue];

	self.mergedColorLabel.backgroundColor = [self.imageView.image mergedColor];
	[self.mergedColorLabel.backgroundColor getRed:&red green:&green blue:&blue alpha:NULL];
	self.mergedColorLabel.text = [NSString stringWithFormat:@"merged color: %.2f %.2f %.2f", red, green, blue];

	self.resultLabel.text = @"";
}

- (IBAction)testAverage:(UIBarButtonItem *)sender
{
	UIImage * image = self.imageView.image;
	NSDate *start = [NSDate date];
	NSUInteger iterations = 0;
	while ([start timeIntervalSinceNow] > -2) {
		[image averageColor];
		iterations += 1;
	}
	NSDate *end = [NSDate date];
	self.resultLabel.text = [NSString stringWithFormat:@"average: %.2f ms", 1000.0 * [end timeIntervalSinceDate:start] / iterations];
}

- (IBAction)testMerge:(UIBarButtonItem *)sender
{
	UIImage * image = self.imageView.image;
	NSDate *start = [NSDate date];
	NSUInteger iterations = 0;
	while ([start timeIntervalSinceNow] > -2) {
		[image mergedColor];
		iterations += 1;
	}
	NSDate *end = [NSDate date];
	self.resultLabel.text = [NSString stringWithFormat:@"merge: %.2f ms", 1000.0 * [end timeIntervalSinceDate:start] / iterations];
}

@end
