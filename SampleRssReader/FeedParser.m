//
//  FeedParser.m
//  SampleRssReader
//
//  Created by Kazuya Ueoka on 2014/07/07.
//  Copyright (c) 2014年 ATGS. All rights reserved.
//

#import "FeedParser.h"

@implementation FeedParser

- (void)dealloc
{
    tmp = nil;
    item = nil;
    self.items = nil;
}

- (void)parserDidStartDocument:(NSXMLParser *)parser {
    self.items = [[NSMutableArray alloc] init];
    hasItem = NO;
}

- (void)parserDidEndDocument:(NSXMLParser *)parser {
    
}

- (void)parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName attributes:(NSDictionary *)attributeDict {
    if ( [elementName isEqualToString:@"item"] ) {
        hasItem = YES;
        item = [[NSMutableDictionary alloc] init];
    } else if ( hasItem && ([elementName isEqualToString:@"title"] || [elementName isEqualToString:@"link"]) ) {
        tmp = [[NSMutableString alloc] init];
    }
}

- (void)parser:(NSXMLParser *)parser didEndElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName {
    if ( [elementName isEqualToString:@"item"] ) {
        [self.items addObject:item];
        
        item = nil;
        hasItem = NO;
    } else if ( hasItem && ([elementName isEqualToString:@"title"] || [elementName isEqualToString:@"link"] )) {
        [item setObject:tmp forKey:elementName];
        tmp = nil;
    }
}

- (void)parser:(NSXMLParser *)parser foundCharacters:(NSString *)string {
    if ( nil != tmp ) {
        [tmp appendString:string];
    }
}

@end
