//
//  LikesTableViewController.m
//  Train
//
//  Created by Neegbeah Reeves on 3/5/15.
//
//

#import "LikesTableViewController.h"
#import "Likes.h"
#import "LikesCustomView.h"

@interface LikesTableViewController (){
    NSArray *username;
    NSArray *profilePic;
}

@end

@implementation LikesTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    self.view.backgroundColor=[UIColor colorWithPatternImage:[UIImage imageNamed:@"background.png"]];

    
    self.likes = [NSMutableArray arrayWithCapacity:10];
    
    Likes *lik = [[Likes alloc] init];
    lik.username = @"JenSelter";
    lik.profilePic =@"JenSelterProfilePic.jpg";
    [self.likes addObject:lik];
    
    lik = [[Likes alloc] init];
    lik.username = @"reevesnick";
    lik.profilePic =@"NeeProfilePic.jpg";
    [self.likes addObject:lik];
    
    lik = [[Likes alloc] init];
    lik.username = @"GeorgeD";
    lik.profilePic =@"placeholder.png";
    [self.likes addObject:lik];
    
    lik = [[Likes alloc] init];
    lik.username = @"TerryCrews";
    lik.profilePic =@"placeholder.png";
    [self.likes addObject:lik];
    
    lik = [[Likes alloc] init];
    lik.username = @"JohnCena";
    lik.profilePic =@"placeholder.png";
    [self.likes addObject:lik];
    
    lik = [[Likes alloc] init];
    lik.username = @"DanielBryant";
    lik.profilePic =@"placeholder.png";
    [self.likes addObject:lik];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
    return [self.likes count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier = @"Cell";
    LikesCustomView *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    Likes *l = (self.likes)[indexPath.row];
    cell.usernameLabel.text = l.username;
    cell.profilePicLabel.image = [UIImage imageNamed:l.profilePic];
    
    return cell;
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
