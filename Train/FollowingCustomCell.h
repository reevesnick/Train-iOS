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

@property (weak,nonatomic) IBOutlet UILabel *dateLabel;
@property (weak,nonatomic) IBOutlet UILabel *usernameLabel;
@property (weak,nonatomic) IBOutlet PFImageView *videoPlacement;
@property (weak,nonatomic) IBOutlet UILabel *descriptionLabel;

@end
