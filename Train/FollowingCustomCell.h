//
//  FollowingCustomCell.h
//  Train
//
//  Created by Neegbeah Reeves on 1/27/15.
//
//

#import <Parse/Parse.h>
#import <ParseUI/ParseUI.h>

@interface FollowingCustomCell : PFTableViewCell

@property (weak,nonatomic) IBOutlet UILabel *date;
@property (weak,nonatomic) IBOutlet UILabel *username;
@property (weak,nonatomic) IBOutlet UILabel *description;

@property (strong,nonatomic) IBOutlet PFImageView *profilePicFile;
@property (strong,nonatomic) IBOutlet UIImageView *videoFile;

@end
