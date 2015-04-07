//
//  RecentTableViewController.m
//  Train
//
//  Created by Neegbeah Reeves on 4/7/15.
//
//

#import "RecentTableViewController.h"
#import "FollowingTableViewController.h"
#import "Following.h"
#import "FollowingCustomCell.h"
#import "UIImage+animatedGIF.h"

@interface RecentTableViewController (){
    UIRefreshControl *refreshControl;

}

@end

@implementation RecentTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.hidesBackButton = TRUE;
    
    
    // UIRefreshController
    refreshControl = [[UIRefreshControl alloc]init];
    [self.tableView addSubview:refreshControl];
    [refreshControl addTarget:self action:@selector(refreshTable) forControlEvents:UIControlEventValueChanged];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    self.following = [NSMutableArray arrayWithCapacity:5];
    
    Following*fol = [[Following alloc] init];
    fol.username = @"JenSelter";
    fol.dateUploaded = @"10s";
    fol.videoFile = [[NSBundle mainBundle] URLForResource:@"recent_workout_gifs_1" withExtension:@"gif"];
    fol.description = @"3 sets of 10";
    fol.profilePic = @"JenSelterProfilePic.jpg";
    fol.usernameCom = @"JenSelter";
    fol.likeCount = @"2 likes";
    [self.following addObject:fol];
    
    fol = [[Following alloc] init];
    fol.username = @"JenSelter";
    fol.dateUploaded = @"1 min";
    fol.videoFile = [[NSBundle mainBundle] URLForResource:@"recent_workout_gifs_2" withExtension:@"gif"];
    fol.description = @"First training on Train";
    fol.profilePic = @"JenSelterProfilePic.jpg";
    fol.usernameCom = @"JenSelter";
    fol.likeCount = @"4 likes";
    [self.following addObject:fol];
    
    
}

-(IBAction)likeView:(id)sender{
    UIStoryboard *likeStoryboard = [UIStoryboard storyboardWithName:@"Likes" bundle:nil];
    UIViewController *initialSettingsVC = [likeStoryboard instantiateInitialViewController];
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


-(IBAction)commentView:(id)sender{
    UIStoryboard *commentsStoryboard = [UIStoryboard storyboardWithName:@"Comments" bundle:nil];
    UIViewController *initialSettingsVC = [commentsStoryboard instantiateInitialViewController];
    initialSettingsVC.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
    [self presentModalViewController:initialSettingsVC animated:YES];
}
/*
 -(IBAction)profile:(id)sender{
 UIStoryboard *commentsStoryboard = [UIStoryboard storyboardWithName:@"UserProfile" bundle:nil];
 UIViewController *initialSettingsVC = [commentsStoryboard instantiateInitialViewController];
 initialSettingsVC.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
 [self presentModalViewController:initialSettingsVC animated:YES];
 }
 */
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)refreshTable {
    //TODO: refresh your data
    [refreshControl endRefreshing];
    [self.tableView reloadData];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return [self.following count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    // Configure the cell...
    
    static NSString *CellIdentifier = @"Cell";
    FollowingCustomCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    
    
    Following *f = (self.following)[indexPath.row];
    cell.usernameLabel.text = f.username;
    cell.dateUploadedLabel.text = f.dateUploaded;
    cell.videoFileLabel.image = [UIImage animatedImageWithAnimatedGIFURL:f.videoFile];
    cell.descriptionLabel.text = f.description;
    cell.profilePicLabel.image = [UIImage imageNamed:f.profilePic];
    cell.usernameComLabel.text = f.usernameCom;
    cell.likeCountLabel.text = f.likeCount;
    // cell.yearLabel.text = movie.year;
    
    return cell;
}

#pragma mark - Image Picker Controller delegate methods

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info {
    
    self.videoURL = info[UIImagePickerControllerMediaURL];
    [picker dismissViewControllerAnimated:YES completion:NULL];
    
    self.videoController = [[MPMoviePlayerController alloc] init];
    
    [self.videoController setContentURL:self.videoURL];
    [self.videoController.view setFrame:CGRectMake(0, 63, 320, 244)];
    [self.view addSubview:self.videoController.view];
    
    [self.videoController play];
    
}

- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker {
    
    [picker dismissViewControllerAnimated:YES completion:NULL];
    
}




/*
 // Override to support conditional editing of the table view.
 - (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
 // Return NO if you do not want the specified item to be editable.
 return YES;
 }
 */

/*
 // Override to support editing the table view.
 - (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
 if (editingStyle == UITableViewCellEditingStyleDelete) {
 // Delete the row from the data source
 [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
 } else if (editingStyle == UITableViewCellEditingStyleInsert) {
 // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
 }
 }
 */

/*
 // Override to support rearranging the table view.
 - (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
 }
 */

/*
 // Override to support conditional rearranging of the table view.
 - (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
 // Return NO if you do not want the item to be re-orderable.
 return YES;
 }
 */

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

@end
