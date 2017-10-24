//
//  HPFStoreCardViewController.m
//  HiPayFullservice
//
//  Created by Nicolas FILLION on 18/10/2017.
//

#import "HPFStoreCardViewController.h"
#import "HPFPaymentScreenUtils.h"
#import "HPFStoreTokenizableCardViewController.h"

@interface HPFStoreCardViewController ()

@end

@implementation HPFStoreCardViewController

+ (UINavigationController *)storeCardViewControllerWithRequest:(HPFPaymentPageRequest *)paymentPageRequest signature:(NSString *)signature
{
    //UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"StoreCard" bundle:HPFPaymentScreenViewsBundle()];
    
    //UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"PaymentScreen" bundle:HPFPaymentScreenViewsBundle()];

    //HPFStoreCardViewController *viewController = [storyboard instantiateInitialViewController];
    
    //HPFStoreCardViewController *viewController = [storyboard instantiateViewControllerWithIdentifier:@"StoreCard"];

    //[viewController setParameters:paymentPageRequest signature:signature];
    
    HPFStoreTokenizableCardViewController *storevc = [[HPFStoreCardViewController alloc] initWithPaymentPageRequest:nil signature:nil andSelectedPaymentProduct:nil];
    
    UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:storevc];
    return navigationController;
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.tableView.backgroundColor = [UIColor groupTableViewBackgroundColor];
    self.title = @"Store Card";
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemCancel target:self action:@selector(doCancel)];
}

- (void)doCancel
{
    //[paymentProductsRequest cancel];
    //[self cancelActivity];
    
    [self.presentingViewController dismissViewControllerAnimated:YES completion:nil];
    
    /*
     if ([self.delegate respondsToSelector:@selector(paymentScreenViewControllerDidCancel:)]) {
     [self.delegate paymentScreenViewControllerDidCancel:self];
     }
     */
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
