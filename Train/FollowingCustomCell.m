//
//  FollowingCustomCell.m
//  Train
//
//  Created by Neegbeah Reeves on 3/4/15.
//
//

#import "FollowingCustomCell.h"

@implementation FollowingCustomCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.movie = [[MPMoviePlayerController alloc] init];
        self.movie.controlStyle = MPMovieControlStyleNone;
        self.movie.scalingMode = MPMovieScalingModeAspectFit;
        [self.contentView addSubview:self.movie.view];
    }
    return self;
}
- (void)layoutSubviews {
    [super layoutSubviews];
}

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
