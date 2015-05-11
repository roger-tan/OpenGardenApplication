//
//  main.m
//  OpenGardenPuzzleSolver
//
//  Created by Roger TAN on 06/05/15.
//  Copyright (c) 2015 Roger TAN. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PuzzleSolver.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSArray *populations = @[@18897109, @12828837, @9461105, @6371773, @5965343, @5946800, @5582170, @5564635, @5268860, @4552402, @4335391, @4296250, @4224851, @4192887, @3439809, @3279833, @3095313, @2812896, @2783243, @2710489, @2543482, @2356285, @2226009, @2149127, @2142508, @2134411];
        NSInteger target = 100000000;
        
        PuzzleSolver *puzzleSolver = [[PuzzleSolver alloc] initWithTarget:target andNumbers:populations];
        [puzzleSolver resolve];
    }
    return 0;
}
