//
//  NSBundle+TZImagePicker.m
//  TZImagePickerController
//
//  Created by 谭真 on 16/08/18.
//  Copyright © 2016年 谭真. All rights reserved.
//

#import "NSBundle+TZImagePicker.h"
#import "TZImagePickerController.h"
#if __has_include("NBFoundation-Swift.h")
#import "NBFoundation-Swift.h"
#else
#import <NBFoundation/NBFoundation-Swift.h>
#endif

@implementation NSBundle (TZImagePicker)

+ (NSBundle *)tz_imagePickerBundle {
    NSBundle *bundle = [NSBundle bundleForClass:[TZImagePickerController class]];
    NSURL *url = [bundle URLForResource:@"NBFoundation" withExtension:@"bundle"];
    bundle = [NSBundle bundleWithURL:url];
    return bundle;
}

+ (NSString *)tz_localizedStringForKey:(NSString *)key {
    return [self tz_localizedStringForKey:key value:@""];
}

+ (NSString *)tz_localizedStringForKey:(NSString *)key value:(NSString *)value {
    NSBundle *bundle = [NSBundle currentWithModuleName:@"NBFoundation"];
    NSString *value1 = [bundle localizedStringForKey:key value:value table:@"NBFoundation"];
    return value1;
}

@end
