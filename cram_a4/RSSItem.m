//
//  RSSItem.m
//  cram_a4
//
//  Created by Erin Cramer on 3/4/2014.
//  Copyright (c) 2014 Erin Cramer. All rights reserved.
//

#import "RSSItem.h"

@implementation RSSItem
@synthesize title, link, parentParserDelegate, description, photo;

-(void)parser: (NSXMLParser *)parser didStartElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName attributes:(NSDictionary *)attributeDict {
    
    if ([elementName isEqual:@"title"]) {
        
        currentString = [[NSMutableString alloc] init];
        [self setTitle:currentString];
        
    } else if ([elementName isEqual:@"link"]){
        
        currentString = [[NSMutableString alloc] init];
        [self setLink:currentString];
        
    } else if ([elementName isEqual:@"description"]){
        
  
        currentString = [[NSMutableString alloc] init];
        [self setDescription:currentString];
        
        
    }
    
}

-(void)parser:(NSXMLParser *)parser foundCharacters:(NSString *)string {
    
    [currentString appendString:string];
    
}

-(void) parser: (NSXMLParser *)parser didEndElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName{
    
    if ([elementName isEqual:@"item"]) {
        
        [parser setDelegate:parentParserDelegate];
        
    } else if ([elementName isEqual:@"description"]){
        
        NSString *src = @"src='";
        NSString *pTag = @"<p>";
        NSString *thePhoto;
        NSString *theDescription;

        NSCharacterSet *srcSet = [NSCharacterSet characterSetWithCharactersInString:@"'"];
        NSString *pSet = @"</p>";

        NSScanner *theScanner = [NSScanner scannerWithString:currentString];
        
        [theScanner scanUpToString:src intoString:NULL];
        [theScanner scanString:src intoString:NULL];
        [theScanner scanUpToCharactersFromSet:srcSet intoString:&thePhoto];
        
        [theScanner scanUpToString:pTag intoString:NULL];
        [theScanner scanString:pTag intoString:NULL];
        [theScanner scanUpToString:pSet intoString:&theDescription];
        
        [self setDescription:theDescription];
        [self setPhoto:thePhoto];
        
    }
    
    currentString = nil;
    
}

@end
