//
//  YYCAKeyframeAnimation.m
//  YYAnimation
//
//  Created by 黄杨洋 on 2018/1/18.
//  Copyright © 2018年 Apple. All rights reserved.
//

#import "YYCAKeyframeAnimation.h"

@implementation YYCAKeyframeAnimation

-(YYCAKeyframeAnimation * _Nullable (^)(NSArray * _Nullable))Values{
    return ^ YYCAKeyframeAnimation *(NSArray* values) {
        self.values = values;
        return self;
    };
}

-(YYCAKeyframeAnimation * _Nullable (^)(CGPathRef _Nullable))Path{
    return ^ YYCAKeyframeAnimation *(CGPathRef path) {
        self.path = path;
        return self;
    };
}

-(YYCAKeyframeAnimation * _Nullable (^)(CAMediaTimingFunction* _Nullable))TimingFunction{
    return ^ YYCAKeyframeAnimation *(CAMediaTimingFunction* timingFunction) {
        self.timingFunction = timingFunction;
        return self;
    };
}

-(YYCAKeyframeAnimation * _Nullable (^)(BOOL))Autoreverses{
    return ^ YYCAKeyframeAnimation *(BOOL autoreverses) {
        self.autoreverses = autoreverses;
        return self;
    };
}

-(YYCAKeyframeAnimation * _Nullable (^)(float))Duration{
    return ^ YYCAKeyframeAnimation *(float duration) {
        self.duration = duration;
        return self;
    };
}

-(YYCAKeyframeAnimation * _Nullable (^)(float))RepeatCount{
    return ^ YYCAKeyframeAnimation *(float repeatCount) {
        self.repeatCount = repeatCount;
        return self;
    };
}

-(YYCAKeyframeAnimation * _Nullable (^)(CFTimeInterval))RepeatDuration{
    return ^ YYCAKeyframeAnimation *(CFTimeInterval repeatDuration) {
        self.repeatDuration = repeatDuration;
        return self;
    };
}

-(YYCAKeyframeAnimation * _Nullable (^)(NSArray<NSNumber *> * _Nullable))KeyTimes{
    return ^ YYCAKeyframeAnimation *(NSArray<NSNumber *> *keyTimes) {
        self.keyTimes = keyTimes;
        return self;
    };
}

-(YYCAKeyframeAnimation *)createYYAnimationWithKeyPath:(NSString *)keypath withBlock:(void (^)(YYCAKeyframeAnimation * _Nullable))Animation{
    self.keyPath = keypath;
    Animation(self);
    return self;
}
/*
 - keyPath可以使用的key
 - #define angle2Radian(angle) ((angle)/180.0*M_PI)
 - transform.rotation.x 围绕x轴翻转 参数：角度 angle2Radian(4)
 transform.rotation.y 围绕y轴翻转 参数：同上
 transform.rotation.z 围绕z轴翻转 参数：同上
 transform.rotation 默认围绕z轴
 transform.scale.x x方向缩放 参数：缩放比例 1.5
 transform.scale.y y方向缩放 参数：同上
 transform.scale.z z方向缩放 参数：同上
 transform.scale 所有方向缩放 参数：同上
 transform.translation.x x方向移动 参数：x轴上的坐标 100
 transform.translation.y x方向移动 参数：y轴上的坐标
 transform.translation.z x方向移动 参数：z轴上的坐标
 transform.translation 移动 参数：移动到的点 （100，100）
*/

@end
