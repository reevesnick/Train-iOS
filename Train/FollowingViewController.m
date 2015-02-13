//
//  FollowingViewController.m
//  Train
//
//  Created by Neegbeah Reeves on 1/27/15.
//
//

#import "FollowingViewController.h"
#import "FollowingCustomCell.h"
#import "Following.h"

@interface FollowingViewController ()

@end

@implementation FollowingViewController

-(id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom init here statements
    }
    return self;
}

-(PFQuery *)queryForTable{
    PFQuery *query = [PFQuery queryWithClassName:@"Activity"];
    
    [query orderByDescending:@"createdAt"];
    
    return query;

}

-(void)viewDidLoad{
    
    [super viewDidLoad];
    
}

-(void)viewDidUnload{
    [super viewDidUnload];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    // Segue Here if necessary. Method is used just in the future
}
-(UITableViewCell* )tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath object:(PFObject *)object{
    
    static NSString *CellIdentifier = @"Cell";
    FollowingCustomCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (!cell){
        cell = [[FollowingCustomCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    NSString *usernameLabel = [object objectForKey:@"userName"];
    NSString *descriptionLabel = [object objectForKey:@"commentsPost"];
    
    PFFile *thumbnail =[object objectForKey:@"videoFile"];
    cell.videoPlacement.image = [UIImage imageNamed:@"placeholder.png"];
    cell.videoPlacement.file = thumbnail;
    [cell.videoPlacement loadInBackground];
    
    [cell.usernameLabel setText:[NSString stringWithFormat:@"%@",usernameLabel]];
    [cell.descriptionLabel setText:[NSString stringWithFormat:@"%@", descriptionLabel]];
    
    return cell;
}

@end
