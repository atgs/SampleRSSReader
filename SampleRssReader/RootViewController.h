//
//  RootViewController.h
//  SampleRssReader
//
//  Created by Kazuya Ueoka on 2014/07/07.
//  Copyright (c) 2014年 ATGS. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RootViewController : UITableViewController <NSURLConnectionDataDelegate, NSURLConnectionDelegate> {
    NSMutableData *tmp;
}

@property (nonatomic, strong) NSMutableArray *items;

@end
