//
//  MusicModel.m
//  MusicPlayer
//
//  Created by 梦想 on 2016/11/23.
//  Copyright © 2016年 lin_tong. All rights reserved.
//

#import "MusicModel.h"

@implementation MusicModel

-(NSNumber*)detailDuration{
    
    if (!_detailDuration) {
        
        NSArray *array = [self.duration componentsSeparatedByString:@":"];
        
        if (array && array.count) {
            
            NSInteger time =  [array[0] integerValue]*60 + [array[1] integerValue];
            _detailDuration = @(time);
        }
        
    }
    return _detailDuration;
}


-(instancetype)initWithDic:(NSDictionary*)dic
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dic];
        self.Id = dic[@"id"];
    }
    return self;
}

-(void)setValue:(id)value forUndefinedKey:(NSString *)key
{
    
}


@end
