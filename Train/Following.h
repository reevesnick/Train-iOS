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

@property (strong,nonatomic)NSString *username;
@property (strong,nonatomic)NSDate *date;
@property (strong,nonatomic)PFFile *videoFile;
@property (strong,nonatomic)NSString *description;

@property (strong,nonatomic) PFQuery *query;


@end
