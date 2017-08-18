//
//  YQMotionShadowView.h
//  testMotionShadow
//
//  Created by problemchild on 2017/8/10.
//  Copyright © 2017年 FreakyYang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface YQMotionShadowView : UIButton

+(YQMotionShadowView *)fromView:(UIView *)targetView;

-(instancetype)initWithTragetView:(UIView *)targetView;

//允许的阴影偏移量 - 默认30
@property(nonatomic,assign)CGFloat offset;

//阴影移动速度 - 默认0.3
@property(nonatomic,assign)CGFloat speedLevel;

//恢复速度 - 默认80
@property(nonatomic,assign)CGFloat backSpeed;


@end
