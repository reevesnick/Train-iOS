//
//  CommentsCustomCell.h
//  Train
//
//  Created by Neegbeah Reeves on 3/5/15.
//
//

#import <UIKit/UIKit.h>

@interface CommentsCustomCell : UITableViewCell

@property (weak,nonatomic)IBOutlet UILabel *commentsLabel;
@property (weak,nonatomic)IBOutlet UILabel *usernameLabel;
@property (weak,nonatomic)IBOutlet UILabel *date;


@property (weak,nonatomic)IBOutlet UIImageView *profilePicLabel;

@end
