//
//  Profile.h
//  Train
//
//  Created by Neegbeah Reeves on 3/12/15.
//
//

#import <Foundation/Foundation.h>

@interface Profile : NSObject

@property (strong,nonatomic)NSString *username;
@property (strong,nonatomic)NSString *profilePic;
@property (strong,nonatomic)NSString *dateUploaded;
@property (strong,nonatomic)NSURL *videoFile;
@property (strong,nonatomic)NSString *description;
@property (strong,nonatomic)NSString *usernameCom;
@property (strong,nonatomic)NSString *likeCount;




@end
