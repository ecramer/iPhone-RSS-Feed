//
//  RSSDetailViewController.h
//  cram_a4
//
//  Created by Erin Cramer on 3/4/2014.
//  Copyright (c) 2014 Erin Cramer. All rights reserved.
//

#import <UIKit/UIKit.h>

@class RSSWebView;
@class RSSChannel;
@class RSSItem;

@interface RSSDetailViewController : UIViewController
@property RSSItem *item;

@property (weak,nonatomic) IBOutlet UILabel *description;
@property (weak, nonatomic) IBOutlet UIImageView *photo;


@end