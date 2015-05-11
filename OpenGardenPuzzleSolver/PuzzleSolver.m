//
//  PuzzleSolver.m
//  OpenGardenPuzzleSolver
//
//  Created by Roger TAN on 06/05/15.
//  Copyright (c) 2015 Roger TAN. All rights reserved.
//

#import "PuzzleSolver.h"

@interface PuzzleSolver ()

@property (nonatomic) NSInteger target;
@property (nonatomic, strong) NSArray *numbers;

@end

@implementation PuzzleSolver

- (instancetype)initWithTarget:(NSInteger)target
                andNumbers:(NSArray *)numbers {
    self = [super init];
    if (self) {
        _target = target;
        _numbers = numbers;
    }
    return self;
}

- (void)resolve {
    NSLog(@"Started finding solutions");
    [self solverWithTarget:_target andNumbers:_numbers];
    NSLog(@"Ended finding solutions");
}

- (void)solverWithTarget:(NSInteger)target andNumbers:(NSArray *)numbers {
    [self solverRecWithTarget:_target numbers:_numbers andTemporarySolutions:[NSMutableArray new]];
}

- (void)solverRecWithTarget:(NSInteger)target
                    numbers:(NSArray *)numbers
          andTemporarySolutions:(NSMutableArray *)temporarySolutions {
    // Initialization
    NSInteger sum = 0;
    // Calculate the sum of partial numbers
    for (NSNumber *number in temporarySolutions) {
        sum += [number integerValue];
    }
    // Solution is find it is the sum correspond to the target sum
    if (sum == target) {
        NSLog(@"Solutions found it");
        NSLog(@"%@", temporarySolutions);
    }
    // Not found
    if (sum >= target) {
        return;
    }
    for (int i = 0; i < [numbers count]; i++) {
        NSMutableArray *remaining = [NSMutableArray new];

        // New remaining list
        for (int j = i + 1; j < [numbers count]; j++) {
            [remaining addObject:numbers[j]];
        }
        // Add to the temporary solutions
        NSMutableArray *temporarySolution = [[NSMutableArray alloc] initWithArray:temporarySolutions];
        [temporarySolution addObject:numbers[i]];
        // Recusif function
        [self solverRecWithTarget:target numbers:remaining andTemporarySolutions:temporarySolution];
    }
    
    
}

@end
