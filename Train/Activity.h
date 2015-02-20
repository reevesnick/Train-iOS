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

@property (weak,nonatomic)PFFile *profilePic;
@property (weak,nonatomic)NSString *description;

@end
