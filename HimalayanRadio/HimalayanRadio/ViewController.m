//
//  ViewController.m
//  HimalayanRadio
//
//  Created by MichaelLi on 2016/10/14.
//  Copyright © 2016年 手持POS机. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *topBar;
@property (weak, nonatomic) IBOutlet UIView *bottomBar;
@property (strong, nonatomic) IBOutlet UIScrollView *scrollView;
@property (weak, nonatomic) IBOutlet UIButton *showMe;
@property(nonatomic,assign) CGPoint touchScrollView;
@property (weak, nonatomic) IBOutlet UIView *vcView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //设置滚动界面的大小:上下滚动,所以最大y值是最下面控件的最大y值
    CGFloat showMeY =  CGRectGetMaxY(self.showMe.frame);
    self.scrollView.contentSize = CGSizeMake(0, showMeY + 60);
    //设置初始位置
    self.scrollView.contentOffset = CGPointMake(0, -20);
    //设置隐藏滚动条
    self.scrollView.showsVerticalScrollIndicator = NO;
    //手指快速划过时,不会触及touch事件
    self.scrollView.delaysContentTouches = YES;
    self.scrollView.canCancelContentTouches = YES;

    UITapGestureRecognizer
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSLog(@"lihonggui");
    UITouch *touch = [touches anyObject];
    _touchScrollView = [touch locationInView:self.vcView];
    NSLog(@"%@",NSStringFromCGPoint(_touchScrollView));

}
- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView
{
    NSLog(@"draggin");
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
