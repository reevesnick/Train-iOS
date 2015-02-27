//
//  ActivityCustomCell.h
//  Train
//
//  Created by Neegbeah Reeves on 2/19/15.
//
//

#import <ParseUI/ParseUI.h>
#import <Parse/Parse.h>

@interface ActivityCustomCell : PFTableViewCell

@property (weak,nonatomic) IBOutlet PFImageView *profilePicFile;
@property (weak, nonatomic) IBOutlet UILabel * descriptionLabel;

@end
