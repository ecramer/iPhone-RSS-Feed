//
//  RSSDetailViewController.m
//  cram_a4
//
//  Created by Erin Cramer on 3/2/2014.
//  Copyright (c) 2014 Erin Cramer. All rights reserved.
//

#import "RSSWebView.h"
#import "RSSItem.h"

@implementation RSSWebView
@synthesize item;
//- (void)loadView
//{
//    // Create an instance of UIWebView as large as the screen
//    CGRect screenFrame = [[UIScreen mainScreen] applicationFrame];
//    UIWebView *wv = [[UIWebView alloc] initWithFrame:screenFrame];
//    // Tell web view to scale web content to fit within bounds of webview
//    [wv setScalesPageToFit:YES];
//    
//    [self setView:wv];
//}

-(void) viewDidLoad {
    
    // Construct a URL with the link string of the item
    NSURL *url = [NSURL URLWithString:[item link]];
    
    // Construct a requst object with that URL
    NSURLRequest *req = [NSURLRequest requestWithURL:url];
    
    // Load the request into the web view
    [[self webView] loadRequest:req];
    
}

- (UIWebView *)webView
{
    return (UIWebView *)[self view];
}



@end
