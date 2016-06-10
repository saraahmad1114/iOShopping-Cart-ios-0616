//
//  FISShoppingCart.m
//  iOShoppingCart
//
//  Created by Flatiron School on 6/9/16.
//  Copyright © 2016 FIS. All rights reserved.
//

#import "FISShoppingCart.h"


@implementation FISShoppingCart
//classes are objects however you can have as many properties of any time, even primitives
-(NSUInteger)calculateTotalPriceInCents
{
    NSUInteger newSum = 0;
    
    for(NSUInteger i = 0; i < [self.items count]; i++)
    {
        FISItem *itemInItemArray = self.items[i];
        newSum = newSum + itemInItemArray.priceInCents;
    }
    return newSum;
    
}
//Done
-(void)addItem:item
{
    [self.items addObject: item];
}
//Done 
-(void)removeItem:item
{
    NSUInteger placeInArray = [self.items indexOfObject:item];
    [self.items removeObjectAtIndex:placeInArray];
}
//DONE
-(void)removeAllItemsLikeItem:item
{
    NSRange newRange = NSMakeRange(0, [self.items count]);
    [self.items removeObjectIdenticalTo:item inRange:newRange];
}
//Done
-(void)sortItemsByNameAsc
{
    NSSortDescriptor *nameDescriptor = [[NSSortDescriptor alloc] initWithKey:@"name" ascending:YES];
    NSArray *newArrayAscending= @[nameDescriptor];
    [self.items sortUsingDescriptors:newArrayAscending];
}
//Done
-(void)sortItemsByNameDesc
{
    NSSortDescriptor *nameDescriptor = [[NSSortDescriptor alloc] initWithKey:@"name" ascending:NO];
    NSArray *newArrayDescending= @[nameDescriptor];
    [self.items sortUsingDescriptors:newArrayDescending];
}
//Done
-(void)sortItemsByPriceInCentsAsc
{
    NSSortDescriptor *sortByAsc = [[NSSortDescriptor alloc]initWithKey:@"priceInCents" ascending:YES];
    NSArray *newArrayAscending= @[sortByAsc];
    [self.items sortUsingDescriptors:newArrayAscending];
}
//Done 
-(void)sortItemsByPriceInCentsDesc
{
    NSSortDescriptor *sortByDesc = [[NSSortDescriptor alloc]initWithKey:@"priceInCents" ascending:NO];
    NSArray *newArrayDescending = @[sortByDesc];
    [self.items sortUsingDescriptors:newArrayDescending];
}

-(NSArray*)allItemsWithName:(NSString*)name
{
    NSArray *newArray = @[];
    NSPredicate *filter = [NSPredicate predicateWithFormat:@"name CONTAINS %@", name];
    newArray = [self.items filteredArrayUsingPredicate:filter];
    return newArray;
}
//USE NSPREDICATE
-(NSArray*)allItemsWithMinimumPriceInCents:(NSUInteger)integer
{
    NSArray *newArray = @[];
    NSPredicate *filter = [NSPredicate predicateWithFormat:@"priceInCents >= %lu", integer];
    newArray = [self.items filteredArrayUsingPredicate:filter];
    return newArray;
}
//USE NSPREDICATE
-(NSArray*)allItemsWithMaximumPriceInCents:(NSUInteger)integer
{
    NSArray *newArray = @[];
    NSPredicate *filter = [NSPredicate predicateWithFormat:@"priceInCents <= %lu", integer];
    newArray = [self.items filteredArrayUsingPredicate:filter];
    return newArray;
}

@end
