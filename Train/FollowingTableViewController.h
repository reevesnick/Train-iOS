//
//  FollowingTableViewController.h
//  Train
//
//  Created by Neegbeah Reeves on 3/4/15.
//
//

#import <UIKit/UIKit.h>
#import <MobileCoreServices/UTCoreTypes.h>
#import <MediaPlayer/MediaPlayer.h>
#import <MobileCoreServices/MobileCoreServices.h>
#import "UIImage+animatedGIF.h"

@interface FollowingTableViewController : UITableViewController <UIImagePickerControllerDelegate,UINavigationControllerDelegate>

@property (nonatomic, strong) NSMutableArray *following;

// Video Properties
@property (strong,nonatomic) NSURL *videoURL;
@property (strong,nonatomic) MPMoviePlayerController *videoController;

-(IBAction)likeView:(id)sender;
-(IBAction)commentView:(id)sender;


@end
