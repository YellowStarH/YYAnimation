//
//  ViewController.m
//  YYAnimation
//
//  Created by 黄杨洋 on 2018/1/18.
//  Copyright © 2018年 Apple. All rights reserved.
//

#import "ViewController.h"
#import "YYCABasicAnimation.h"
#import "YYCAKeyframeAnimation.h"

@interface ViewController ()
{
    UIView *vi;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    vi = [[UIView alloc]initWithFrame:CGRectMake(100, 200, 100, 30)];
    vi.backgroundColor = [UIColor orangeColor];
    [self.view addSubview:vi];
    
    UIButton *btn = [[UIButton alloc]initWithFrame:CGRectMake(250, 100, 100, 30)];
    [btn setTitle:@"开始动画" forState:UIControlStateNormal];
    btn.backgroundColor = [UIColor redColor];
    [btn addTarget:self action:@selector(test2) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    
}


-(void)test1{
    YYCABasicAnimation *anmation = [YYCABasicAnimationShare createYYAnimationWithKeyPath:@"transform.rotation.z" withBlock:^(YYCABasicAnimation * _Nullable yyAnimation) {
        yyAnimation.ToValue(@(M_PI * 1.0))
        .Duration(0.1)
        .RepeatCount(HUGE_VALF)
        .Autoreverses(NO);
    }];
    
    [vi.layer addAnimation:anmation forKey:@"rotationAnimation"];
}


-(void)test2{
    YYCAKeyframeAnimation *animation = [YYCAKeyAnimationShare createYYAnimationWithKeyPath:@"position" withBlock:^(YYCAKeyframeAnimation * _Nullable yyAnimation) {
        //    创建一个CGPathRef对象，就是动画的路线
        CGMutablePathRef path = CGPathCreateMutable();
        //    设置开始位置
        CGPathMoveToPoint(path, NULL, vi.layer.position.x, vi.layer.position.y);//移动到起始点
        //    沿着路径添加四曲线点移动
        CGPoint p = CGPointMake(0, 300);
        CGPathAddQuadCurveToPoint(path, NULL, p.x, p.y,300, 500);
        yyAnimation.Path(path)
        .Duration(1)
        .Autoreverses(YES)
        .RepeatCount(HUGE_VALF);
        CGPathRelease(path);
    }];
    [vi.layer addAnimation:animation forKey:@"KCKeyframeAnimation_Position"];
    [self test1];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
