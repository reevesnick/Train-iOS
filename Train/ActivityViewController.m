//
//  ActivityViewController.m
//  Train
//
//  Created by Neegbeah Reeves on 2/19/15.
//
//

#import "ActivityViewController.h"
#import "Activity.h"
#import "ActivityCustomCell.h"

@interface ActivityViewController ()

@end

@implementation ActivityViewController


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

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    // Segue Here if necessary. Method is used just in the future
}
-(UITableViewCell* )tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath object:(PFObject *)object{
    
    static NSString *CellIdentifier = @"Cell";
    ActivityCustomCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (!cell){
        cell = [[ActivityCustomCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    NSString *descriptionLabel = [object objectForKey:@"Description"];
    
    PFFile *thumbnail =[object objectForKey:@"profilePic"];
    cell.profilePicFile.image = [UIImage imageNamed:@"placeholder.png"];
    cell.profilePicFile.file = thumbnail;
    [cell.profilePicFile loadInBackground];
    
    //[cell.description setText:[NSString stringWithFormat:@"%@",descriptionLabel]];
    
    
    
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
