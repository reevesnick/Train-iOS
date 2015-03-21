//
//  HomeViewController.m
//  Train
//
//  Created by Neegbeah Reeves on 2/5/15.
//
//

#import "HomeViewController.h"
#import "SDCSegmentedViewController.h"

@interface HomeViewController ()

@property (strong,nonatomic) SDCSegmentedViewController * s;


@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor=[UIColor colorWithPatternImage:[UIImage imageNamed:@"background.png"]];
    
    [self.navigationItem setLeftBarButtonItem:[[UIBarButtonItem alloc] initWithCustomView:[[UIView alloc] init]]];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    SDCSegmentedViewController *segmentedViewController = segue.destinationViewController;
    segmentedViewController.position = SDCSegmentedViewControllerControlPositionNavigationBar;
    segmentedViewController.switchesWithSwipe = YES;
    [segmentedViewController addStoryboardSegments:@[@"featured", @"recent"]];
}


@end
