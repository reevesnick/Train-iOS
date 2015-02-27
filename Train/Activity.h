//
//  Activity.h
//  Train
//
//  Created by Neegbeah Reeves on 2/19/15.
//
//

#import <Foundation/Foundation.h>
#import <Parse/Parse.h>

@interface Activity : NSObject

@property (strong,nonatomic)PFFile *profilePic;
@property (strong,nonatomic)NSString *description;

@end
