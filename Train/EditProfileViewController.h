//
//  EditProfileViewController.h
//  Train
//
//  Created by Neegbeah Reeves on 3/20/15.
//
//

#import <UIKit/UIKit.h>

@interface EditProfileViewController : UIViewController <UITextFieldDelegate,UITextViewDelegate>

@property (weak,nonatomic) IBOutlet UITextField *textField;
@property (weak,nonatomic) IBOutlet UITextView *textView;
@property (weak,nonatomic) IBOutlet UIScrollView *scrollView;
@property (weak,nonatomic) IBOutlet UITextField *textFieldTwo;



@end
