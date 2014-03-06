//
//  RSSItem.h
//  cram_a4
//
//  Created by Erin Cramer on 3/4/2014.
//  Copyright (c) 2014 Erin Cramer. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RSSItem : NSObject <NSXMLParserDelegate>
{
    NSMutableString *currentString;
}
@property (nonatomic, weak) id parentParserDelegate;
@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *link;
@property (nonatomic, strong) NSString *description;
@property (nonatomic, strong) NSString *photo;

@end
