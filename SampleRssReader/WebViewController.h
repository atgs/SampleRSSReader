//
//  WebViewController.h
//  SampleRssReader
//
//  Created by Kazuya Ueoka on 2014/07/07.
//  Copyright (c) 2014年 ATGS. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WebViewController : UIViewController <UIWebViewDelegate>

@property (nonatomic, strong) NSString *url;
@property (nonatomic, strong) UIWebView *webView;

- (id)initWithURL:(NSString *)url;

@end
