//
//  RSSDetailViewController.m
//  cram_a4
//
//  Created by Erin Cramer on 3/4/2014.
//  Copyright (c) 2014 Erin Cramer. All rights reserved.
//

#import "RSSDetailViewController.h"
#import "RSSItem.h"

@implementation RSSDetailViewController
@synthesize item;
#pragma mark - Managing the detail item

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [_description setText: [item description]];
    [[self navigationItem] setTitle: [item title]];
    UIImage *image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:[item photo]]]];
    [_photo setImage:image];
    [_description sizeToFit];
    
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender

{
    [[segue destinationViewController] setItem:item];
    
}


@end
