//
//  ProfileViewController.m
//  Train
//
//  Created by Neegbeah Reeves on 3/12/15.
//
//

#import "ProfileViewController.h"
#import "Profile.h"
#import "ProfileCustomCell.h"
#import "UIImage+animatedGIF.h"

@interface ProfileViewController (){
    UIRefreshControl *refreshControl;

}

@end

@implementation ProfileViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // UIRefreshController
    refreshControl = [[UIRefreshControl alloc]init];
    [self.tableView addSubview:refreshControl];
    [refreshControl addTarget:self action:@selector(refreshTable) forControlEvents:UIControlEventValueChanged];
    
    [self.scroller setScrollEnabled:YES];
    [self.scroller setContentSize:(CGSizeMake(320, 5000))];
    
    self.profile = [NSMutableArray arrayWithCapacity:5];
    
    Profile*pro = [[Profile alloc] init];
    pro.username = @"reevesnick";
    pro.dateUploaded = @"20 min";
    pro.videoFile = [[NSBundle mainBundle] URLForResource:@"trainers_1" withExtension:@"gif"];;
    pro.description = @"4 sets of 12 reps if you're looking to build lean muscle";
    pro.profilePic = @"NeeProfilePic.jpg";
    pro.usernameCom = @"reevesnick";
    pro.likeCount = @"44 Likes";
    [self.profile addObject:pro];
    
    pro = [[Profile alloc] init];
    pro.username = @"reevesnick";
    pro.dateUploaded = @"20 min";
    pro.videoFile = [[NSBundle mainBundle] URLForResource:@"guyworkout" withExtension:@"gif"];;
    pro.description = @"10 reps on each side";
    pro.profilePic = @"NeeProfilePic.jpg";
    pro.usernameCom = @"reevesnick";
    pro.likeCount = @"30 Likes";
    [self.profile addObject:pro];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)likeView:(id)sender{
    UIStoryboard *settingsStoryboard = [UIStoryboard storyboardWithName:@"Likes" bundle:nil];
    UIViewController *initialSettingsVC = [settingsStoryboard instantiateInitialViewController];
    initialSettingsVC.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
    [self presentModalViewController:initialSettingsVC animated:YES];
}

-(IBAction)commentView:(id)sender{
    UIStoryboard *settingsStoryboard = [UIStoryboard storyboardWithName:@"Comments" bundle:nil];
    UIViewController *initialSettingsVC = [settingsStoryboard instantiateInitialViewController];
    initialSettingsVC.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
    [self presentModalViewController:initialSettingsVC animated:YES];
}

-(IBAction)editProfile:(id)sender{
    UIStoryboard *settingsStoryboard = [UIStoryboard storyboardWithName:@"EditProfile" bundle:nil];
    UIViewController *initialSettingsVC = [settingsStoryboard instantiateInitialViewController];
    initialSettingsVC.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
    [self presentModalViewController:initialSettingsVC animated:YES];
}

-(IBAction)following:(id)sender{
    UIStoryboard *settingsStoryboard = [UIStoryboard storyboardWithName:@"Likes" bundle:nil];
    UIViewController *initialSettingsVC = [settingsStoryboard instantiateInitialViewController];
    initialSettingsVC.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
    [self presentModalViewController:initialSettingsVC animated:YES];
}

-(IBAction)followers:(id)sender{
    UIStoryboard *settingsStoryboard = [UIStoryboard storyboardWithName:@"Likes" bundle:nil];
    UIViewController *initialSettingsVC = [settingsStoryboard instantiateInitialViewController];
    initialSettingsVC.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
    [self presentModalViewController:initialSettingsVC animated:YES];
}


-(IBAction)likeSelected:(id)sender{
    UIButton *button = (UIButton *)sender;
    if (!button.selected) {
        button.backgroundColor = [UIColor yellowColor];
        button.selected = YES;
    }
    else{
        button.backgroundColor = [UIColor colorWithRed:66.0/255.0 green:69.0/255.0 blue:67.0/255.0 alpha:1.0];
        button.selected = NO;
    }
}

-(IBAction)goToSettings{
    
    UIActionSheet *actionSheet = [[UIActionSheet alloc] initWithTitle:@"Settings" delegate:self cancelButtonTitle:@"Cancel" destructiveButtonTitle:@"Log Out" otherButtonTitles:nil, nil];
    [actionSheet showInView:self.view];
    
}

-(IBAction)reportUser{
    
    UIActionSheet *actionSheet = [[UIActionSheet alloc] initWithTitle:@"Settings" delegate:self cancelButtonTitle:@"Cancel" destructiveButtonTitle:@"Report User" otherButtonTitles:nil, nil];
    [actionSheet showInView:self.view];
    
}

- (IBAction)closeAction:(id)sender {
    [self dismissModalViewControllerAnimated:YES];
    
}


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return [self.profile count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    // Configure the cell...
    
    static NSString *CellIdentifier = @"Cell";
    ProfileCustomCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    
    
    Profile *p = (self.profile)[indexPath.row];
    cell.usernameLabel.text = p.username;
    cell.dateUploadedLabel.text = p.dateUploaded;
    cell.videoFileLabel.image = [UIImage animatedImageWithAnimatedGIFURL:p.videoFile];
    cell.descriptionLabel.text = p.description;
    cell.profilePicLabel.image = [UIImage imageNamed:p.profilePic];
    cell.usernameComLabel.text = p.usernameCom;
    cell.likeCountLabel.text = p.likeCount;
    // cell.yearLabel.text = movie.year;
    
    [cell.descriptionLabel sizeToFit];
    
    return cell;
}

- (void)refreshTable {
    //TODO: refresh your data
    [refreshControl endRefreshing];
    [self.tableView reloadData];
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
