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

@interface ProfileViewController (){
    
}

@end

@implementation ProfileViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self.scroller setScrollEnabled:YES];
    [self.scroller setContentSize:(CGSizeMake(320, 5000))];
    
    self.profile = [NSMutableArray arrayWithCapacity:5];
    
    Profile*pro = [[Profile alloc] init];
    pro.username = @"reevesnick";
    pro.dateUploaded = @"20 min";
    pro.videoFile = @"back workout.png";
    pro.description = @"First training on Train";
    pro.profilePic = @"NeeProfilePic.jpg";
    [self.profile addObject:pro];
    
    pro = [[Profile alloc] init];
    pro.username = @"reevesnick";
    pro.dateUploaded = @"20 min";
    pro.videoFile = @"Chest workout.png";
    pro.description = @"First training on Train";
    pro.profilePic = @"NeeProfilePic.jpg";
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
    cell.videoFileLabel.image = [UIImage imageNamed:p.videoFile];
    cell.descriptionLabel.text = p.description;
    cell.profilePicLabel.image = [UIImage imageNamed:p.profilePic];
    // cell.yearLabel.text = movie.year;
    
    return cell;
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
