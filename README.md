# YQMotionShadowView

##### 微博：畸形滴小男孩
#### 视差阴影效果

### 效果预览：</br>
 ![image](https://github.com/976431yang/YQMotionShadowView/blob/master/2017-08-18 17_50_37.gif)
- 实际显示效果比截图展示效果要好

-直接拖到工程中使用
```objective-c
#import "YQMotionShadowView.h"
```

### Example Code:
#### 最简单使用(默认效果)：
```objective-c
	
	//对于任意一个需要加阴影的View，比如这里有个ImageView；
	UIImageView *IMGV;

	//生成一个阴影View
	YQMotionShadowView *showView = [YQMotionShadowView fromView:IMGV];

	//将阴影view显示，原View不需要再显示了
    [self.view addSubview:showView];

```

#### 自定义参数：
```objective-c
	
	//阴影颜色、透明度、模糊程度，就按Layer的方法去设置即可
    showView.shadowColor   = [UIColor darkGrayColor].CGColor;
    showView.shadowOpacity = 0.8;
    showView.shadowRadius  = 20;

    //视差View相关设置 -- 可以自己调节参数，对效果进行调整

    //允许的阴影偏移量 - 默认30
    showView.offset = 30；

    //阴影移动速度 - 默认0.3
    showView.speedLevel = 0.3；

    //往中间恢复的速度 - 默认80
    showView.backSpeed = 80；

```