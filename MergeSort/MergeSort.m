//
//  MergeSort.m
//  MergeSort
//
//  Created by Roberto Osorio Goenaga on 10/7/15.
//  Copyright © 2015 Roberto Osorio Goenaga. All rights reserved.
//

#import "MergeSort.h"

@implementation MergeSort

- (NSArray*)sort:(NSArray*)array {
    if(array.count < 2) {
        return array;
    } else {
        NSArray *newLeft = [self sort:[array subarrayWithRange:NSMakeRange(0, array.count/2)]];
        NSArray *newRight = [self sort:[array subarrayWithRange:NSMakeRange((NSUInteger)array.count/2,
                                                                            array.count - (array.count/2))]];
        return [self mergeWithLeft:newLeft right:newRight];
    }
}

- (NSArray*)mergeWithLeft:(NSArray*)left right:(NSArray*)right {
    NSMutableArray *newArray = [[NSMutableArray alloc] init];
    int lIndex = 0;
    int rIndex = 0;
    while (lIndex < left.count && rIndex < right.count) {
        if ([[left objectAtIndex:lIndex] intValue] < [[right objectAtIndex:rIndex] intValue]) {
            [newArray addObject:left[lIndex++]];
        } else {
            [newArray addObject:right[rIndex++]];
        }
    }
    NSArray *newRight = [right subarrayWithRange:NSMakeRange(rIndex, ([right count] - rIndex))];
    NSArray *newLeft = [left subarrayWithRange:NSMakeRange(lIndex, ([left count] - lIndex))];
    newLeft = [newArray arrayByAddingObjectsFromArray:newLeft];
    return [newLeft arrayByAddingObjectsFromArray:newRight];
}

@end
