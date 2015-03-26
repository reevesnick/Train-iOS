//
//  Following.h
//  Train
//
//  Created by Neegbeah Reeves on 1/27/15.
//
//

#import <Foundation/Foundation.h>
#import <Parse/Parse.h>

@interface Following : NSObject

@property (strong,nonatomic)NSString *username;
@property (strong,nonatomic)NSString *profilePic;
@property (strong,nonatomic)NSString *dateUploaded;
@property (strong,nonatomic)NSURL *videoFile;
@property (strong,nonatomic)NSString *description;
@property (strong,nonatomic)NSString *usernameCom;
@property (strong,nonatomic)NSString *web;




@end
