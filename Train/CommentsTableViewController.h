//
//  CommentsTableViewController.h
//  Train
//
//  Created by Neegbeah Reeves on 3/5/15.
//
//

#import <UIKit/UIKit.h>

@interface CommentsTableViewController : UIViewController <UITableViewDataSource,UITableViewDelegate>

@property (nonatomic, strong) NSMutableArray *comments;
@property (weak, nonatomic) IBOutlet UITableView *tableView;



@end
