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
@property (strong,nonatomic)PFFile *profilePic;
@property (strong,nonatomic)NSString *dateUploaded;
@property (strong,nonatomic)PFFile *videoFile;
@property (strong,nonatomic)NSString *description;



@end
