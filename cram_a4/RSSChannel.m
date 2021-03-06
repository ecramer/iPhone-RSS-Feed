//
//  RSSChannel.m
//  cram_a4
//
//  Created by Erin Cramer on 3/3/2014.
//  Copyright (c) 2014 Erin Cramer. All rights reserved.
//

#import "RSSChannel.h"
#import "RSSItem.h"

@implementation RSSChannel
@synthesize items, title, infoString, parentParserDelegate;
- (id) init {
    
    self = [super init];
    
    if (self) {
        
        items = [[NSMutableArray alloc] init];
        
    }
    
    return self;
    
}

- (void)parser: (NSXMLParser *)parser didEndElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName{
    
    currentString = nil;
    if ([elementName isEqual:@"channel"]){
        
        [parser setDelegate:parentParserDelegate];
        
    }
    
    
}

-(void)parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName attributes:(NSDictionary *)attributeDict{

    if ([elementName isEqual:@"title"]) {
        
        currentString = [[NSMutableString alloc] init];
        [self setTitle:currentString];
        
    } else if ([elementName isEqual:@"description"]) {
        
        currentString = [[NSMutableString alloc] init];
        [self setInfoString:currentString];
        
    } else if ([elementName isEqual:@"item"]){
        
        RSSItem *entry = [[RSSItem alloc]init];
        [entry setParentParserDelegate:self];
        [parser setDelegate:entry];
        [items addObject:entry];
        
    }
    
}

-(void) parser: (NSXMLParser *)parser foundCharacters:(NSString *)string {
    
    [currentString appendString:string];
    
}

@end
