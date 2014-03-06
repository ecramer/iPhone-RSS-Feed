//
//  RSSChannel.h
//  cram_a4
//
//  Created by Erin Cramer on 3/3/2014.
//  Copyright (c) 2014 Erin Cramer. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RSSChannel : NSObject <NSXMLParserDelegate>
{
    NSMutableString *currentString;
}

@property (nonatomic, weak) id parentParserDelegate;
@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *infoString;
@property (nonatomic, readonly, strong) NSMutableArray *items;

@end
