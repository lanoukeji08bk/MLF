//
//  MainViewController.m
//  WWSideslipViewControllerSample
//
//  Created by 王维 on 14-8-26.
//  Copyright (c) 2014年 wangwei. All rights reserved.
//

// 版权属于原作者
// http://code4app.com (cn) http://code4app.net (en)
// 发布代码于最专业的源码分享网站: Code4App.com

#import "MainViewController.h"
#import "HACursor.h"
#import "UIView+Extension.h"
#import "SelectionTableView.h"

@interface MainViewController ()

@property (nonatomic, strong) NSArray *titles;
//@property (nonatomic, strong) NSMutableArray *pageViews;

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //不允许有重复的标题
    self.titles = @[@"礼物",@"穿搭",@"美食",@"衣物",@"鞋包",@"饰品",@"美护",@"数码",@"家居",@"手工",@"母婴",@"娱乐"];
    
    HACursor *cursor = [[HACursor alloc]init];
    cursor.frame = CGRectMake(0, 64, self.view.width, 45);
    cursor.titles = self.titles;
    cursor.pageViews = [self createPageViews];
    //设置根滚动视图的高度
    cursor.rootScrollViewHeight = self.view.frame.size.height - 89;
    //默认值是白色
    cursor.titleNormalColor = [UIColor whiteColor];
    //默认值是白色
    cursor.titleSelectedColor = [UIColor redColor];
    cursor.showSortbutton = YES;
    //默认的最小值是5，小于默认值的话按默认值设置
    cursor.minFontSize = 6;
    //默认的最大值是25，小于默认值的话按默认值设置，大于默认值按设置的值处理
    //cursor.maxFontSize = 30;
    //cursor.isGraduallyChangFont = NO;
    //在isGraduallyChangFont为NO的时候，isGraduallyChangColor不会有效果
    //cursor.isGraduallyChangColor = NO;
    [self.view addSubview:cursor];
}

- (NSMutableArray *)createPageViews{
    NSMutableArray *pageViews = [NSMutableArray array];
    for (NSInteger i = 0; i < self.titles.count; i++) {
        SelectionTableView *textView = [[SelectionTableView alloc]init];
//        textView.label.text = self.titles[i];
        [pageViews addObject:textView];
    }
    return pageViews;
}




@end
