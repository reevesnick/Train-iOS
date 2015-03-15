//
//  RecordingViewController.h
//  Train
//
//  Created by Neegbeah Reeves on 1/11/15.
//
//

#import <UIKit/UIKit.h>
#import <MobileCoreServices/UTCoreTypes.h>
#import <MediaPlayer/MediaPlayer.h>
#import <MobileCoreServices/MobileCoreServices.h>

@interface RecordingViewController : UIViewController <UIImagePickerControllerDelegate,UINavigationControllerDelegate,UITableViewDataSource,UITableViewDelegate,UITextFieldDelegate>

// Image View Properties
@property (strong, nonatomic) IBOutlet UIImageView *imageView;

// Video Properties
@property (strong,nonatomic) NSURL *videoURL;
@property (strong,nonatomic) MPMoviePlayerController *videoController;

// Photo Action
- (IBAction)takePhoto:  (UIButton *)sender;
- (IBAction)selectPhoto:(UIButton *)sender;

// Catageory TableView

@property (strong,nonatomic) IBOutlet UITableView *tableView;
@property (strong,nonatomic) IBOutlet UITextView *textField;

@end
