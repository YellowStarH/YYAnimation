//
//  YYCABasicAnimation.m
//  CoreAnimationTest
//
//  Created by 黄杨洋 on 2018/1/18.
//  Copyright © 2018年 Apple. All rights reserved.
//

#import "YYCABasicAnimation.h"

@implementation YYCABasicAnimation


-(YYCABasicAnimation * _Nullable (^)(float))Duration{
    return ^ YYCABasicAnimation *(float duration) {
        self.duration = duration;
        return self;
    };
}

-(YYCABasicAnimation * _Nullable (^)(float))RepeatCount{
    return ^ YYCABasicAnimation *(float repeatCount) {
        self.repeatCount = repeatCount;
        return self;
    };
}

-(YYCABasicAnimation * _Nullable (^)(CFTimeInterval))RepeatDuration{
    return ^ YYCABasicAnimation *(CFTimeInterval repeatDuration) {
        self.repeatDuration = repeatDuration;
        return self;
    };
}

-(YYCABasicAnimation * _Nullable (^)(CFTimeInterval))BeginTime{
    return ^ YYCABasicAnimation *(CFTimeInterval beginTime) {
        self.beginTime = beginTime;
        return self;
    };
}

-(YYCABasicAnimation * _Nullable (^)(CAMediaTimingFunction* _Nullable))TimingFunction{
    return ^ YYCABasicAnimation *(CAMediaTimingFunction* timingFunction) {
        self.timingFunction = timingFunction;
        return self;
    };
}

-(YYCABasicAnimation * _Nullable (^)(BOOL))Autoreverses{
    return ^ YYCABasicAnimation *(BOOL autoreverses) {
        self.autoreverses = autoreverses;
        return self;
    };
}

-(YYCABasicAnimation * _Nullable (^)(NSNumber * _Nullable))FromValue{
    return ^ YYCABasicAnimation *(NSNumber* fromValue) {
        self.fromValue = fromValue;
        return self;
    };
}


-(YYCABasicAnimation * _Nullable (^)(NSNumber * _Nullable))ToValue{
    return ^ YYCABasicAnimation *(NSNumber* toValue) {
        self.toValue = toValue;
        return self;
    };
}


-(YYCABasicAnimation * _Nullable (^)(NSNumber * _Nullable))ByValue{
    return ^ YYCABasicAnimation *(NSNumber* byValue) {
        self.byValue = byValue;
        return self;
    };
}



-(YYCABasicAnimation *)createYYAnimationWithKeyPath:(NSString *)keypath withBlock:(void (^)(YYCABasicAnimation * _Nullable))Animation{
    self.keyPath = keypath;
    Animation(self);
    return self;
}

@end
