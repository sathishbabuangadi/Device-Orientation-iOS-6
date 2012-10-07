//
//  ViewController.m
//  DeviceOrienationTest
//
//  Created by sathishbabuangadi on 07/10/12.
//  Copyright (c) 2012 satishangadi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    lbl = [[UILabel alloc] initWithFrame:CGRectMake(20, 50, 280, 60)];
    lbl.text = @"My Frame x:20 y:50 width:280 height:60";
    lbl.numberOfLines = 2;
    [self.view addSubview:lbl];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    
    if (interfaceOrientation == UIInterfaceOrientationLandscapeLeft | interfaceOrientation == UIInterfaceOrientationLandscapeRight) {
        
        lbl.frame = CGRectMake(50, 100, 400, 30);
        lbl.text = @"My Frame x:50 y:100 widht:280 height:60";
    } else {
        lbl.frame = CGRectMake(20, 50, 280, 60);
        lbl.text = @"My Frame x:20 y:50 width:280 height:60";
    }
    
    return YES;
}


@end
