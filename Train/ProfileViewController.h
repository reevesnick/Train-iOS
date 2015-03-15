//
//  ProfileViewController.h
//  Train
//
//  Created by Neegbeah Reeves on 3/12/15.
//
//

#import <UIKit/UIKit.h>
#import <MobileCoreServices/UTCoreTypes.h>
#import <MediaPlayer/MediaPlayer.h>
#import <MobileCoreServices/MobileCoreServices.h>

@interface ProfileViewController : UIViewController <UITableViewDataSource,UITableViewDelegate,UIScrollViewAccessibilityDelegate,UIScrollViewDelegate>

@property (nonatomic, strong) NSMutableArray *profile;
@property (strong,nonatomic) IBOutlet UIScrollView * scroller;

-(IBAction)likeView:(id)sender;
-(IBAction)commentView:(id)sender;

@property (strong,nonatomic) IBOutlet UITableView *tableView;





@end
