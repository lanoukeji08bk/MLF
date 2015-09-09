//
//  MLFTabBarController.m
//  MLF
//
//  Created by hg on 15/9/9.
//  Copyright (c) 2015年 lanou. All rights reserved.
//

#import "MLFTabBarController.h"
#import "MLFNavigationController.h"
#import "MainViewController.h"
#import "SelectionTableViewController.h"
#import "StarFavorCollectionViewController.h"
#import "CategoryCollectionViewController.h"
#import "SearchCollectionViewController.h"

@interface MLFTabBarController ()

@end

@implementation MLFTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    MainViewController *selection = [[MainViewController alloc] initWithRootViewController:[[SelectionTableViewController alloc] init]];
    selection.title = @"精选";
    [self addChildViewController:selection];
    
    MLFNavigationController *starFavor = [[MLFNavigationController alloc] initWithRootViewController:[[StarFavorCollectionViewController alloc] init]];
    starFavor.title = @"明星同款";
    [self addChildViewController:starFavor];
    
    MLFNavigationController *category = [[MLFNavigationController alloc] initWithRootViewController:[[CategoryCollectionViewController alloc] init]];
    category.title = @"分类";
    [self addChildViewController:category];

    MLFNavigationController *search = [[MLFNavigationController alloc] initWithRootViewController:[[SearchCollectionViewController alloc] init]];
    search.title = @"搜索";
    [self addChildViewController:search];
}
@end
