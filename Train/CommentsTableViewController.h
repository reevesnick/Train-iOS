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

@property (strong,nonatomic)IBOutlet UITextField *textField;
@property (weak,nonatomic)IBOutlet UIScrollView *scrollView;
@property (strong,nonatomic)IBOutlet UIToolbar *toolbar;


@end
