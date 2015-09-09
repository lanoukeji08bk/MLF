//
//  SelectionTableViewController.m
//  MLF
//
//  Created by hg on 15/9/9.
//  Copyright (c) 2015年 lanou. All rights reserved.
//

#import "SelectionTableViewController.h"
#import "SelectionTableViewCell.h"
#import "Define.h"
#import "SelectionDetailViewController.h"
#import "MLFNavigationController.h"

@interface SelectionTableViewController ()

@property (nonatomic, strong) MLFNavigationController *MLFVC;


@end

@implementation SelectionTableViewController

static NSString *today = @"selection";


- (void)viewDidLoad {
    [super viewDidLoad];
    
    //对EyeNavigationController做一个强转。是我们能够使用自己定义的属性
    self.MLFVC = (MLFNavigationController *)self.navigationController;
    
    
    //注册cell
    [self.tableView  registerClass:[SelectionTableViewCell class] forCellReuseIdentifier:today];
    
}


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 10;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return 10;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    SelectionTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"selection" forIndexPath:indexPath];
    
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    return 0.1;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    SelectionDetailViewController *selectionDVC = [[SelectionDetailViewController alloc] init];
    [self.navigationController pushViewController:selectionDVC animated:YES];
    
}


@end
