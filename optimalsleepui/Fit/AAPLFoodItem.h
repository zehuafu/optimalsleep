@import Foundation;
@import HealthKit;

@interface AAPLFoodItem : NSObject

// Creates a new food item.
+ (instancetype)foodItemWithName:(NSString *)name joules:(double)joules;

// \c AAPLFoodItem properties are immutable.
@property (nonatomic, readonly, copy) NSString *name;
@property (nonatomic, readonly) double joules;

@end
