//
//  ViewController.m
//  YFImageScrollView
//
//  Created by yangfei on 12-8-9.
//  Copyright (c) 2012年 appxyz. All rights reserved.
//

#import "ViewController.h"
#import "YFImageScrollView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor grayColor];
    
    NSMutableArray *images = [NSMutableArray arrayWithObjects:[UIImage imageNamed:@"test_0.png"],
                              [UIImage imageNamed:@"test_1.png"],
                              [UIImage imageNamed:@"test_2.png"],
                              [UIImage imageNamed:@"test_3.png"],
                              [UIImage imageNamed:@"test_4.png"],
                              [UIImage imageNamed:@"test_5.png"],
                              [UIImage imageNamed:@"test_6.png"], nil];
    
    YFImageScrollView *isv = [[[YFImageScrollView alloc] initWithFrame:CGRectMake(50, 50, 200, 300) imageArray:images] autorelease];
    [self.view addSubview:isv];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

@end
