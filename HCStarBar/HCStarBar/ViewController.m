//
//  ViewController.m
//  HCStarBar
//
//  Created by 微微笑了 on 2017/10/11.
//  Copyright © 2017年 微微笑了. All rights reserved.
//

#import "ViewController.h"

#import "HCRatingView.h"

@interface ViewController () <HCRatingViewDelegate>

@property (nonatomic,strong) HCRatingView *ratingView;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    _ratingView = [[HCRatingView alloc] initWithFrame:CGRectMake(80, 100, 100, 50)];
    _ratingView.isFull = YES; //设置是否允许半颗星
    [_ratingView setImagesDeselected:@"星1" partlySelected:@"星3" fullSelected:@"星2" andDelegate:self]; //设置星星的图片，如果isfull == YES 则partlySelected为半颗星的图
    [self.ratingView disPlayRating:0.0];//设置默认分数
    [self.view addSubview:_ratingView];
    
}

-(void) ratingChanged:(float)newRating{
    
        NSLog(@"____分数:%.1f",newRating);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
