//
//  CommentsTableViewController.m
//  Train
//
//  Created by Neegbeah Reeves on 3/5/15.
//
//

#import "CommentsTableViewController.h"
#import "Comments.h"
#import "CommentsCustomCell.h"

@interface CommentsTableViewController (){
    NSArray *comments;
    NSArray *username;
    NSArray *profilePic;
    NSArray *date;
    UIRefreshControl *refreshControl;

}

@end

@implementation CommentsTableViewController

@synthesize textField,toolbar;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // UIRefreshController
    refreshControl = [[UIRefreshControl alloc]init];
    [self.tableView addSubview:refreshControl];
    [refreshControl addTarget:self action:@selector(refreshTable) forControlEvents:UIControlEventValueChanged];

    
    //textField.delegate = self;
    //toolbar.delegate =self;
    // UIToobar pupup keyboard
    
    textField.inputAccessoryView = toolbar;
    
    // where masterTextField is the textField is the one you tap, and the keyboard rises up along with the small textField.
    
    textField.returnKeyType = UIReturnKeyDone;
    
    [textField setKeyboardType:UIKeyboardTypeDefault];
    
    
    self.comments = [NSMutableArray arrayWithCapacity:10];
    
    Comments *com = [[Comments alloc] init];
    com.username = @"JenSelter";
    com.profilePic =@"JenSelterProfilePic.jpg";
    com.date = @"2m";
    com.comment =@"Awesome Video!";
    [self.comments addObject:com];
    
    com = [[Comments alloc] init];
    com.username = @"reevesnick";
    com.profilePic =@"NeeProfilePic.jpg";
    com.date = @"5m";
    com.comment = @"Great way to stay in shape!";
    [self.comments addObject:com];
    
    com = [[Comments alloc] init];
    com.username = @"GeorgeD";
    com.profilePic =@"placeholder.png";
    com.date = @"5h";
    com.comment = @"Really liking this";
    [self.comments addObject:com];
    
    com = [[Comments alloc] init];
    com.username = @"TerryCrews";
    com.profilePic =@"placeholder.png";
    com.date = @"10h";
    com.comment =@"Great technique. Keep working at it";
    [self.comments addObject:com];
    
    self.view.backgroundColor=[UIColor colorWithPatternImage:[UIImage imageNamed:@"background.png"]];


    
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
    return [self.comments count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    // Configure the cell...
    
    static NSString *CellIdentifier = @"Cell";
    CommentsCustomCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    Comments *c = (self.comments)[indexPath.row];
    cell.usernameLabel.text = c.username;
    cell.profilePicLabel.image = [UIImage imageNamed:c.profilePic];
    cell.commentsLabel.text = c.comment;
    cell.date.text = c.date;

    
    return cell;
}

- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    
    // add toolbar above keyboard
    UIToolbar *toolBar = [[UIToolbar alloc] initWithFrame:CGRectMake(0.0, 100.0, 320.0, 44.0)];
    toolBar.barStyle = UIBarStyleBlackTranslucent;
    
    // done button
    UIBarButtonItem *done = [[UIBarButtonItem alloc] initWithTitle:@"Fechar"
                                                             style:UIBarButtonItemStyleBordered
                                                            target:self action:@selector(closeKeyboard)];
    
    UIBarButtonItem *space = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace
                                                                           target:nil
                                                                           action:nil];
    
    toolBar.items = [NSArray arrayWithObjects:space, done, nil];

    textField.inputAccessoryView = toolBar;
    
  
}

-(BOOL)textViewShouldBeginEditing:(UITextView *)textView{
    
   // textView.inputAccessoryView = toolbar;
    
    return YES;
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
