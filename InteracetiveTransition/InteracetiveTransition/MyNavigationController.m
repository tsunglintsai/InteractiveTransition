//
//  MyNavigationController.m
//  InteracetiveTransition
//
//  Created by Henry Tsai on 2/23/15.
//  Copyright (c) 2015 Henry Tsai. All rights reserved.
//

#import "MyNavigationController.h"
#import "ToNPTransition.h"
#import "NPViewController.h"

@interface MyNavigationController ()<UINavigationControllerDelegate>

@end

@implementation MyNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.delegate = self;
}

- (void)navigationController:(UINavigationController *)navigationController willShowViewController:(UIViewController *)viewController animated:(BOOL)animated{
    
}
- (void)navigationController:(UINavigationController *)navigationController didShowViewController:(UIViewController *)viewController animated:(BOOL)animated{
    
}

//- (NSUInteger)navigationControllerSupportedInterfaceOrientations:(UINavigationController *)navigationController {
//    
//}
//- (UIInterfaceOrientation)navigationControllerPreferredInterfaceOrientationForPresentation:(UINavigationController *)navigationController {
//    
//}

- (id <UIViewControllerInteractiveTransitioning>)navigationController:(UINavigationController *)navigationController
                          interactionControllerForAnimationController:(id <UIViewControllerAnimatedTransitioning>) animationController {
    if([animationController isKindOfClass:[ToNPTransition class]]){
        return nil;
    }
    return nil;
}

- (id <UIViewControllerAnimatedTransitioning>)navigationController:(UINavigationController *)navigationController
                                   animationControllerForOperation:(UINavigationControllerOperation)operation
                                                fromViewController:(UIViewController *)fromVC
                                                  toViewController:(UIViewController *)toVC {
    if ([toVC isKindOfClass:[NPViewController class]]) {
        return [[ToNPTransition alloc]init];
    }
    return nil;
}
@end
