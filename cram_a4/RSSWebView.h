//
//  RSSDetailViewController.h
//  cram_a4
//
//  Created by Erin Cramer on 3/2/2014.
//  Copyright (c) 2014 Erin Cramer. All rights reserved.
//

#import <UIKit/UIKit.h>
@class RSSItem;
@interface RSSWebView : UIViewController

@property (nonatomic, readonly) UIWebView *webView;
@property RSSItem *item;

@end
