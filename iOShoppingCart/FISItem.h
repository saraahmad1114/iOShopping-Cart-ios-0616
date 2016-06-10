//  FISItem.h

#import <Foundation/Foundation.h>

@interface FISItem : NSObject
//Custom class that we created and primitives can be stored
//

@property (strong, nonatomic) NSString *name;
@property (nonatomic) NSUInteger priceInCents;

- (instancetype)init;

- (instancetype)initWithName:(NSString *)name
                priceInCents:(NSUInteger)priceInCents;

@end
