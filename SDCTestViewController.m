//
//  SDCTestViewController.m
//  Pixels U
//
//  Created by Neegbeah Reeves on 11/11/14.
//  Copyright (c) 2014 Pixels, LCC. All rights reserved.
//

#import "SDCTestViewController.h"
#import "SDCSegmentedViewController.h"

@interface SDCTestViewController ()

@property (strong,nonatomic) SDCSegmentedViewController * s;

@end

@implementation SDCTestViewController





- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
[self.navigationItem setLeftBarButtonItem:[[UIBarButtonItem alloc] initWithCustomView:[[UIView alloc] init]]];    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    SDCSegmentedViewController *segmentedViewController = segue.destinationViewController;
    segmentedViewController.position = SDCSegmentedViewControllerControlPositionNavigationBar;
    segmentedViewController.switchesWithSwipe = YES;

    
    [segmentedViewController addStoryboardSegments:@[@"news", @"event",@"twitter"]];
    
 
    
    
   
}


@end
