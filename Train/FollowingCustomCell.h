//
//  FollowingCustomCell.h
//  Train
//
//  Created by Neegbeah Reeves on 3/4/15.
//
//

#import <UIKit/UIKit.h>

@interface FollowingCustomCell : UITableViewCell

@property (weak,nonatomic)IBOutlet UILabel *usernameLabel;
@property (weak,nonatomic)IBOutlet UIImageView *profilePicLabel;
@property (weak,nonatomic)IBOutlet UILabel *dateUploadedLabel;
@property (weak,nonatomic)IBOutlet UIImageView *videoFileLabel;
@property (weak,nonatomic)IBOutlet UILabel *descriptionLabel;

@end
