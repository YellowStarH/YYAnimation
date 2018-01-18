//
//  YYCABasicAnimation.h
//  CoreAnimationTest
//
//  Created by 黄杨洋 on 2018/1/18.
//  Copyright © 2018年 Apple. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>

#define YYCABasicAnimationShare [[YYCABasicAnimation alloc]init]

@interface YYCABasicAnimation : CABasicAnimation

///所改变属性的结束时的值
@property (nonatomic, copy, readonly) YYCABasicAnimation *_Nullable(^ _Nonnull ToValue)(NSNumber * _Nullable toValue);

///所改变属性的起始值
@property (nonatomic, copy, readonly) YYCABasicAnimation *_Nullable(^ _Nonnull FromValue)(NSNumber * _Nullable fromValue);

///所改变属性相同起始值的改变量
@property (nonatomic, copy, readonly) YYCABasicAnimation *_Nullable(^ _Nonnull ByValue)(NSNumber * _Nullable byValue);

///动画的时间 越小越快
@property (nonatomic, copy, readonly) YYCABasicAnimation *_Nullable(^ _Nonnull Duration)(float duration);

///重复的次数。不停重复设置为 HUGE_VALF
@property (nonatomic, copy, readonly) YYCABasicAnimation *_Nullable(^ _Nonnull RepeatCount)(float repeatCount);

///动画结束时是否执行逆动画
@property (nonatomic, copy, readonly) YYCABasicAnimation *_Nullable(^ _Nonnull Autoreverses)(BOOL autoreverses);

///所改变属性相同起始值的改变量
@property (nonatomic, copy, readonly) YYCABasicAnimation *_Nullable(^ _Nonnull BeginTime)(CFTimeInterval beginTime);

///设置动画的速度变化
@property (nonatomic, copy, readonly) YYCABasicAnimation *_Nullable(^ _Nonnull TimingFunction)(CAMediaTimingFunction* _Nullable timingFunction);

///设置动画的时间
@property (nonatomic, copy, readonly) YYCABasicAnimation *_Nullable(^ _Nonnull RepeatDuration)(CFTimeInterval repeatDuration);

///创建动画
-(YYCABasicAnimation *_Nullable)createYYAnimationWithKeyPath:(NSString *_Nullable)keypath withBlock:(void(^_Nullable)(YYCABasicAnimation * _Nullable yyAnimation))Animation;

@end
