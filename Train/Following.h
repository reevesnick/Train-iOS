//
//  Following.h
//  Train
//
//  Created by Neegbeah Reeves on 1/27/15.
//
//

#import <Foundation/Foundation.h>
#import <Parse/Parse.h>
#import <ParseUI/ParseUI.h>

@interface Following : NSObject

@property (strong,nonatomic)PFFile *profilePic;
//@property (strong,nonatomic)NSInteger *likeCount;
@property (strong,nonatomic)NSDate *dateUploaded;
@property (strong,nonatomic)PFFile *videoFile;
@property (strong,nonatomic)NSString *caption;



@end
