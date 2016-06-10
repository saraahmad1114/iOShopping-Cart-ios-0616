//
//  FISShoppingCart.h
//  iOShoppingCart
//  Created by Flatiron School on 6/9/16.
//  Copyright © 2016 FIS. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FISItem.h"
@interface FISShoppingCart : NSObject
@property(strong, nonatomic) NSMutableArray *items;

//methods will always go after the properties declared

-(NSUInteger)calculateTotalPriceInCents;

-(void)addItem:item;

-(void)removeItem:item;

-(void)removeAllItemsLikeItem:item;

-(void)sortItemsByNameAsc;

-(void)sortItemsByNameDesc;

-(void)sortItemsByPriceInCentsAsc;

-(void)sortItemsByPriceInCentsDesc;

-(NSArray*)allItemsWithName:(NSString*)name;

-(NSArray*)allItemsWithMinimumPriceInCents:(NSUInteger)integer;

-(NSArray*)allItemsWithMaximumPriceInCents:(NSUInteger)integer;
@end
