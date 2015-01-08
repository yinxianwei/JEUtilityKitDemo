//
//  NSString+UtilityKit.m
//  JEUtilityKitDemo
//
//  Created by 尹现伟 on 15-1-7.
//  Copyright (c) 2015年 DNE Technology Co.,Ltd. All rights reserved.
//

#import "NSString+UtilityKit.h"
#import "JEUtilityKit.pch"

@implementation NSString(Utility)

-(UIColor *)Color{
    NSScanner *scanner;
    unsigned int rgbval;
    
    scanner = [NSScanner scannerWithString:self];
    [scanner setCharactersToBeSkipped:[NSCharacterSet characterSetWithCharactersInString:@"#"]];
    [scanner scanHexInt: &rgbval];
    return UIColorFromRGB(rgbval);
}

-(NSString *)removeString:(NSString *)aString{
    return [self stringByReplacingOccurrencesOfString:aString withString:@""];
}

+(NSString *)fetchBundleidentifier{
    return [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleIdentifier"];
}

+(NSString *)fetchBundleVersion{
    return [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleVersion"];
}

-(CGSize)stringSizeWithFont:(UIFont *)font size:(CGSize)size breakmode:(NSLineBreakMode)model{
    if (self.length == 0) {
        return CGSizeMake(0, 0);
    }
    size.height = size.height == 0 ?1000 : size.height;
    
    NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc]init];
    paragraphStyle.lineBreakMode = model;

    if (!isIOS7) {
        
        NSMutableAttributedString *attributedStr = [[NSMutableAttributedString alloc] initWithString:self attributes:@{NSFontAttributeName:font}];
        
        [attributedStr addAttribute:NSParagraphStyleAttributeName
                              value:paragraphStyle
                              range:NSMakeRange(0, [self length])];
        CGSize textSize = [attributedStr boundingRectWithSize:size
                                                      options:NSStringDrawingUsesLineFragmentOrigin
                                                      context:nil].size;
        return textSize;
    }

    NSDictionary *attribute = @{NSFontAttributeName:font,NSParagraphStyleAttributeName:paragraphStyle};
    CGSize strSize = [self boundingRectWithSize:size options: NSStringDrawingUsesFontLeading|NSStringDrawingUsesLineFragmentOrigin|NSStringDrawingTruncatesLastVisibleLine  attributes:attribute context:nil].size;
    return strSize;
}

-(CGSize)stringSizeWithFont:(UIFont *)font size:(CGSize)size{
    if (self.length == 0) {
        return ccs(0, 0);
    }
    return [self stringSizeWithFont:font size:size breakmode:NSLineBreakByWordWrapping];
}


- (BOOL)isFileExist
{
    if (self.length == 0) {
        return NO;
    }
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *path = [paths objectAtIndex:0];
    NSString *filePath = [path stringByAppendingFormat:@"%@",self];
    NSFileManager *fileManager = [NSFileManager defaultManager];
    BOOL result = [fileManager fileExistsAtPath:filePath];
    return result;
}

- (void)archiveRootToPath:(NSString *)path fileName:(NSString *)name{
    if (path.length == 0 || name.length == 0) {
        return;
    }
    NSString *filename = [path stringByAppendingPathComponent:name];
    [NSKeyedArchiver archiveRootObject:self toFile:filename];
}

+ (NSString *)unarchiveToPath:(NSString *)path fileName:(NSString *)name{
    if (path.length == 0 || name.length == 0) {
        return nil;
    }
    NSString *filename = [path stringByAppendingPathComponent:name];
    return [NSKeyedUnarchiver unarchiveObjectWithFile:filename];
}

#define U_IdentityNumbers @"0123456789Xx"

- (BOOL)isIdentity{
    
    if (self.length == 15 || self.length == 18) {
        NSString *emailRegex = @"^[0-9]*$";
        NSPredicate *emailTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", emailRegex];
        bool sfzNo = [emailTest evaluateWithObject:[self stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]]];
        
        if (self.length == 15) {
            if (!sfzNo) {
                return NO;
            }
        }
        else if (self.length == 18) {
            NSArray* codeArray = [NSArray arrayWithObjects:@"7",@"9",@"10",@"5",@"8",@"4",@"2",@"1",@"6",@"3",@"7",@"9",@"10",@"5",@"8",@"4",@"2", nil];
            NSDictionary* checkCodeDic = [NSDictionary dictionaryWithObjects:[NSArray arrayWithObjects:@"1",@"0",@"X",@"9",@"8",@"7",@"6",@"5",@"4",@"3",@"2", nil]  forKeys:[NSArray arrayWithObjects:@"0",@"1",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10", nil]];
            
            NSScanner* scan = [NSScanner scannerWithString:[self substringToIndex:17]];
            
            int val;
            BOOL isNum = [scan scanInt:&val] && [scan isAtEnd];
            if (!isNum) {
                return NO;
            }
            int sumValue = 0;
            
            for (int i =0; i<17; i++) {
                sumValue+=[[self substringWithRange:NSMakeRange(i , 1) ] intValue]* [[codeArray objectAtIndex:i] intValue];
            }
            
            NSString* strlast = [checkCodeDic objectForKey:[NSString stringWithFormat:@"%d",sumValue%11]];
            
            if ([strlast isEqualToString: [[self substringWithRange:NSMakeRange(17, 1)]uppercaseString]]) {
                return YES;
            }
            return  NO;
        }
    }
    return NO;
}

-  (int)convertToInt {
    
    int strlength = 0;
    char* p = (char*)[self cStringUsingEncoding:NSUnicodeStringEncoding];
    for (int i=0 ; i<[self lengthOfBytesUsingEncoding:NSUnicodeStringEncoding] ;i++) {
        if (*p) {
            p++;
            strlength++;
        }
        else {
            p++;
        }
    }
    return (strlength+1)/2;
}
@end
