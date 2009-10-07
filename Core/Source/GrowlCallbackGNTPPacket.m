//
//  GrowlCallbackGNTPPacket.m
//  Growl
//
//  Created by Evan Schoenberg on 11/3/08.
//  Copyright 2008 Adium X / Saltatory Software. All rights reserved.
//

#import "GrowlCallbackGNTPPacket.h"
#import "GrowlGNTPHeaderItem.h"
#import "GrowlDefines.h"

@implementation GrowlCallbackGNTPPacket
- (id)init
{
	if ((self = [super init])) {
		callbackDict = [[NSMutableDictionary alloc] init];
	} 
	return self;
}
- (void)dealloc
{
	[callbackDict release]; callbackDict = nil;
	
	[super dealloc];
}

- (NSString *)identifier
{
	return [callbackDict objectForKey:GROWL_NOTIFICATION_INTERNAL_ID];
}
- (void)setIdentifier:(NSString *)string
{
	[callbackDict setObject:string
						 forKey:GROWL_NOTIFICATION_INTERNAL_ID];

	/* Now update our identifier and our delegate GrowlGNTPPacket's identifier */
	[self setPacketID:string];
}

- (GrowlGNTPCallbackType)callbackType
{
	return callbackType;
}
- (void)setCallbackType:(GrowlGNTPCallbackType)inType
{
	callbackType = inType;
}

- (GrowlReadDirective)receivedHeaderItem:(GrowlGNTPHeaderItem *)headerItem
{
	NSString *name = [headerItem headerName];
	NSString *value = [headerItem headerValue];

	if (headerItem == [GrowlGNTPHeaderItem separatorHeaderItem]) {
		if ([self identifier]) {
			return GrowlReadDirective_PacketComplete;
		} else {
			[self setError:[NSError errorWithDomain:GROWL_NETWORK_DOMAIN
											   code:GrowlGNTPCallbackPacketError
										   userInfo:[NSDictionary dictionaryWithObject:@"Notification-ID header is required in a callback response"
																				forKey:NSLocalizedFailureReasonErrorKey]]];
			return GrowlReadDirective_Error;
		}
	}

	if ([name caseInsensitiveCompare:@"Notification-ID"] == NSOrderedSame) {
		[self setIdentifier:value];
	} else if ([name caseInsensitiveCompare:@"Notification-Callback-Result"] == NSOrderedSame) {
		if ([value caseInsensitiveCompare:@"CLICKED"] == NSOrderedSame) {
			[self setCallbackType:GrowlGNTPCallback_Clicked];
		} else {
			[self setCallbackType:GrowlGNTPCallback_Closed];			
		}
	} else if ([name caseInsensitiveCompare:@"Notification-Callback-Context"] == NSOrderedSame) {
		id propertyList = [NSPropertyListSerialization propertyListFromData:[value dataUsingEncoding:NSUTF8StringEncoding]
														   mutabilityOption:NSPropertyListImmutable
																	 format:NULL
														   errorDescription:NULL];
		[callbackDict setObject:(propertyList ? propertyList : value)
							 forKey:GROWL_NOTIFICATION_CLICK_CONTEXT];

	} else if ([name caseInsensitiveCompare:@"Notification-Callback-Context-Type"] == NSOrderedSame) {
		[callbackDict setObject:value
							 forKey:GROWL_NOTIFICATION_CLICK_CONTENT_TYPE];
	} else if ([name caseInsensitiveCompare:@"Application-Name"] == NSOrderedSame) {
		[callbackDict setValue:value forKey:GROWL_APP_NAME];
	} else if ([name caseInsensitiveCompare:@"X-Application-PID"] == NSOrderedSame) {
		[callbackDict setObject:value
						 forKey:GROWL_APP_PID];
	} else if ([name rangeOfString:@"X-" options:(NSLiteralSearch | NSAnchoredSearch | NSCaseInsensitiveSearch)].location != NSNotFound) {
		[self addCustomHeader:headerItem];
	}

	return GrowlReadDirective_Continue;
}

/*!
 * @brief Return a Growl notification dictionary good enough to respond to a callbacl
 */
- (NSDictionary *)growlDictionary
{
	NSMutableDictionary *growlDictionary = [[[super growlDictionary] mutableCopy] autorelease];
	
	[growlDictionary addEntriesFromDictionary:callbackDict];
	
	return growlDictionary;
}

/*!
 * @brief Headers to be returned via the -OK success result
 */
- (NSArray *)headersForResult
{
	NSMutableArray *headersForResult = [[[super headersForResult] mutableCopy] autorelease];
	if (!headersForResult) headersForResult = [NSMutableArray array];
	[headersForResult addObject:[GrowlGNTPHeaderItem headerItemWithName:@"Notification-ID" value:[self identifier]]];
	[headersForResult addObject:[GrowlGNTPHeaderItem headerItemWithName:@"Notification-Callback-Result"
																		 value:([self callbackType] == GrowlGNTPCallback_Clicked ?
																				@"CLICKED" :
																				@"CLOSED")]];

	return headersForResult;
}

@end