//
//  ProfileCustomCell.h
//  Train
//
//  Created by Neegbeah Reeves on 3/12/15.
//
//

#import <UIKit/UIKit.h>

@interface ProfileCustomCell : UITableViewCell

@property (weak,nonatomic)IBOutlet UILabel *usernameLabel;
@property (weak,nonatomic)IBOutlet UIImageView *profilePicLabel;
@property (weak,nonatomic)IBOutlet UILabel *dateUploadedLabel;
@property (weak,nonatomic)IBOutlet UIImageView *videoFileLabel;
@property (weak,nonatomic)IBOutlet UILabel *descriptionLabel;

@end
