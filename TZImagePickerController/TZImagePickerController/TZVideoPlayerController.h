//
//  TZVideoPlayerController.h
//  TZImagePickerController
//
//  Created by 谭真 on 16/1/5.
//  Copyright © 2016年 谭真. All rights reserved.
//

#import <UIKit/UIKit.h>

@class TZAssetModel;
@interface TZVideoPlayerController : UIViewController

@property (nonatomic, strong) TZAssetModel *model;


// modified by Novia
@property (nonatomic, strong) NSURL *playUrl;
// 是否是从相册点击预览的
@property (nonatomic, assign) BOOL isNeedHiddend;
// end

@end
