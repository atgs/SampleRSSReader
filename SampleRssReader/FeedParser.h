//
//  FeedParser.h
//  SampleRssReader
//
//  Created by Kazuya Ueoka on 2014/07/07.
//  Copyright (c) 2014年 ATGS. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FeedParser : NSObject <NSXMLParserDelegate> {
    NSMutableString *tmp;
    NSMutableDictionary *item;
    BOOL hasItem;
}

@property (nonatomic, strong) NSMutableArray *items;

@end
