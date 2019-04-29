//
//  NSString+NBExtension.m
//  TZImagePickerController
//
//  Created by shenshen on 2019/4/29.
//  Copyright © 2019 谭真. All rights reserved.
//

#import "NSString+NBExtension.h"
#import "NSBundle+TZImagePicker.h"

@implementation NSString (NBExtension)

- (NSString *)fo {
    return [self localizedWithName:@"NBFoundation"];
}

- (NSString *)localizedWithName:(NSString *)name {
    NSBundle *languageBundle =  [NSBundle currentLangWithModuleName:name];
    return self;
    return [languageBundle localizedStringForKey:self value:nil table:name];
}

@end
