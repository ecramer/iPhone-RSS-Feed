//
//  RSSMasterViewController.h
//  cram_a4
//
//  Created by Erin Cramer on 3/4/2014.
//  Copyright (c) 2014 Erin Cramer. All rights reserved.
//

#import <UIKit/UIKit.h>

@class RSSChannel;
@interface RSSMasterViewController : UITableViewController <NSXMLParserDelegate> {
    
    NSURLConnection *connection;
    NSMutableData *xmlData;
    RSSChannel *channel;
}
-(void)fetchEntries;

@end
