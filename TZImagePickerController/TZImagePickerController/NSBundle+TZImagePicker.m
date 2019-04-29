//
//  NSBundle+TZImagePicker.m
//  TZImagePickerController
//
//  Created by 谭真 on 16/08/18.
//  Copyright © 2016年 谭真. All rights reserved.
//

#import "NSBundle+TZImagePicker.h"
#import "TZImagePickerController.h"

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

+ (NSBundle *)currentWithModuleName:(NSString *)moduleName {
    NSString *str = [NSString stringWithFormat:@"%@.PodsDummy_%@",moduleName,moduleName];
    Class bundleClass = NSClassFromString(str);
    if (bundleClass == nil) {
        NSBundle *mainBundle = [NSBundle mainBundle];
        NSURL *resourceBundleURL = [mainBundle URLForResource:moduleName withExtension:@"bundle"];
        if (resourceBundleURL == nil) {
            return mainBundle;
        }
        return [NSBundle bundleWithURL:resourceBundleURL];
    }
    NSBundle *modualBundle = [NSBundle bundleForClass:bundleClass];
    NSURL *resourceBundleURL = [modualBundle URLForResource:moduleName withExtension:@"bundle"];
    if (resourceBundleURL == nil) {
        return [NSBundle mainBundle];
    }
    return [NSBundle bundleWithURL:resourceBundleURL];
}

+ (NSBundle *)currentLangWithModuleName:(NSString *)moduleName {
    NSBundle *resourceBundle = [NSBundle currentWithModuleName:moduleName];
    if (resourceBundle == nil) {
        return [NSBundle mainBundle];
    }
    
    NSArray *appLanguages = [[NSUserDefaults standardUserDefaults] objectForKey:@"AppleLanguages"];
    NSString *languageName = [appLanguages objectAtIndex:0];
    //TODO:这里先写死
    languageName = @"zh-Hans";
    NSString *path = [resourceBundle pathForResource:languageName ofType:@"lproj"];
    if (path == nil) {
        return [NSBundle mainBundle];
    }
    NSBundle *languageBudle = [[NSBundle alloc] initWithPath:path];
    if (languageBudle == nil) {
        return [NSBundle mainBundle];
    }
    return languageBudle;
}

@end


