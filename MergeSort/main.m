//
//  main.m
//  MergeSort
//
//  Created by Roberto Osorio Goenaga on 10/7/15.
//  Copyright © 2015 Roberto Osorio Goenaga. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MergeSort.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        MergeSort *mergeSort = [MergeSort new];
        NSArray *thisArray = @[@5, @2, @7, @8, @4, @9, @3, @1, @6, @0];
        NSArray *sorted = [mergeSort sort:thisArray];
        NSLog(@"Sorted array: %@", sorted);
    }
    return 0;
}
