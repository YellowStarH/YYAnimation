//
//  YYCAKeyframeAnimation.h
//  YYAnimation
//
//  Created by 黄杨洋 on 2018/1/18.
//  Copyright © 2018年 Apple. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>

#define YYCAKeyAnimationShare [[YYCAKeyframeAnimation alloc]init]

@interface YYCAKeyframeAnimation : CAKeyframeAnimation

///动画对象会在指定的时间(duration)内，依次显示values数组中的每一个关键帧
@property (nonatomic, copy, readonly) YYCAKeyframeAnimation *_Nullable(^ _Nonnull Values)(NSArray * _Nullable values);

///可以设置一个CGPathRef\CGMutablePathRef,让层跟着路径移动。path只对CALayer的anchorPoint和position起作用。如果你设置了path，那么values将被忽略
@property (nonatomic, copy, readonly) YYCAKeyframeAnimation *_Nullable(^ _Nonnull Path)(CGPathRef _Nullable path);

///可以为对应的关键帧指定对应的时间点,其取值范围为0到1.0,keyTimes中的每一个时间值都对应values中的每一帧.当keyTimes没有设置的时候,各个关键帧的时间是平分的
@property (nonatomic, copy, readonly) YYCAKeyframeAnimation *_Nullable(^ _Nonnull KeyTimes)(NSArray<NSNumber *>* _Nullable keyTimes);

///动画的时间 越小越快
@property (nonatomic, copy, readonly) YYCAKeyframeAnimation *_Nullable(^ _Nonnull Duration)(float duration);

///重复的次数。不停重复设置为 HUGE_VALF
@property (nonatomic, copy, readonly) YYCAKeyframeAnimation *_Nullable(^ _Nonnull RepeatCount)(float repeatCount);

///动画结束时是否执行逆动画
@property (nonatomic, copy, readonly) YYCAKeyframeAnimation *_Nullable(^ _Nonnull Autoreverses)(BOOL autoreverses);

///类似于运动的加速度   kCAMediaTimingFunctionLinear//线性
//                  kCAMediaTimingFunctionEaseIn//淡入
//                  kCAMediaTimingFunctionEaseOut//淡出
//                  kCAMediaTimingFunctionEaseInEaseOut//淡入淡出
//                  kCAMediaTimingFunctionDefault//默认
@property (nonatomic, copy, readonly) YYCAKeyframeAnimation *_Nullable(^ _Nonnull TimingFunction)(CAMediaTimingFunction* _Nullable timingFunction);



///创建动画
-(YYCAKeyframeAnimation *_Nullable)createYYAnimationWithKeyPath:(NSString *_Nullable)keypath withBlock:(void(^_Nullable)(YYCAKeyframeAnimation * _Nullable yyAnimation))Animation;



@end
