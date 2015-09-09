//
//  WelcomeViewController.m
//  MLF
//
//  Created by hg on 15/9/9.
//  Copyright (c) 2015年 lanou. All rights reserved.
//

#import "WelcomeViewController.h"
#import "Define.h"
#import "MLFTabBarController.h"


@interface WelcomeViewController ()

@property (nonatomic, strong) UIScrollView *welcome;
@property (nonatomic, strong) UIImageView *next;

@end

@implementation WelcomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.welcome = [[UIScrollView alloc] init];
    self.welcome.frame = [UIScreen mainScreen].bounds;
    self.welcome.contentSize = CGSizeMake(3 * kScreenWidth, kScreenHeight);
    self.welcome.pagingEnabled=YES;
    self.welcome.showsHorizontalScrollIndicator=NO;
    self.welcome.showsVerticalScrollIndicator=NO;
    self.welcome.bounces=NO;
    
    for (int i=1; i < 3 + 1; i++) {
        UIImageView* imageView=[[UIImageView alloc]init];
        CGFloat imageX = (i - 1) * kScreenWidth;
        CGFloat imageY = 0;
        imageView.frame=CGRectMake(imageX, imageY, kScreenWidth, kScreenHeight);
        imageView.image=[UIImage imageNamed:[NSString stringWithFormat:@"%d",i]];
        [self.welcome addSubview:imageView];
        /**
         *在最后一张图片添加进入主页的按钮
         */
        if (i == 3){
            [self setupLastImageView:imageView];
        }
    }
    
    
    [self.view addSubview:self.welcome];
    
}

-(void)setupLastImageView:(UIImageView*)imageView
{
    //在imageView上添加按钮，需要开启用户交互功能，UIImageView这个功能默认关闭
    
    imageView.userInteractionEnabled=YES;
    
    UIButton* btn=[[UIButton alloc]init];
    btn.frame=CGRectMake(0.8 * kScreenWidth, 0.5 * kScreenHeight, 64, 64);
    btn.layer.cornerRadius=10;
    [btn setImage:[UIImage imageNamed:@"next"] forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(jumpMainPage) forControlEvents:UIControlEventTouchUpInside];
    [imageView addSubview:btn];
}

- (void)jumpMainPage {
    
    UIWindow* window =[UIApplication sharedApplication].keyWindow;
    window.rootViewController=[[MLFTabBarController alloc]init];
}


@end
