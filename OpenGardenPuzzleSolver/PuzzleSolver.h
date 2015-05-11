//
//  PuzzleSolver.h
//  OpenGardenPuzzleSolver
//
//  Created by Roger TAN on 06/05/15.
//  Copyright (c) 2015 Roger TAN. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PuzzleSolver : NSObject

- (instancetype)initWithTarget:(NSInteger)target
                andNumbers:(NSArray *)numbers;

- (void)resolve;

@end
