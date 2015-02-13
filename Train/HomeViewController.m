//
//  HomeViewController.m
//  Train
//
//  Created by Neegbeah Reeves on 2/5/15.
//
//

#import "HomeViewController.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    
    /* Parse Login Screen Apperars. 
     In order to customize the login screen. You need to make a Cocoa class file (.h and .m) to create an custom 
     PFLoginViewController and PFSignUpViewController subclass to create a customtmize a view to custom the login screen
     and the signup screen. For more, check out http://www.parse.com/tutorails for more*/
    
    if(![PFUser currentUser]){
        
        PFLogInViewController *logInViewController = [[PFLogInViewController alloc]init];
        [logInViewController setDelegate:self];
        logInViewController.fields = PFLogInFieldsUsernameAndPassword | PFLogInFieldsTwitter | PFLogInFieldsFacebook |PFLogInFieldsSignUpButton | PFLogInFieldsPasswordForgotten  ;
        
        PFSignUpViewController *signUpViewController = [[PFSignUpViewController alloc]init];
        [signUpViewController setDelegate:self];
    
        [logInViewController setSignUpController:signUpViewController];
        
        [self presentViewController:logInViewController animated:YES completion:NULL];
        
        
        //self.view.backgroundColor = [UIColor colorWithPatternImage:
        //  [UIImage imageNamed:@"sidebar_title.png"]];
    }

}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
