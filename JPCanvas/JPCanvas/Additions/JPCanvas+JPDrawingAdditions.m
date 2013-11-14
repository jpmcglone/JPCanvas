//
// Created by John McGlone on 11/13/13.
// Copyright (c) 2013 JP. All rights reserved.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import "JPCanvas+JPDrawingAdditions.h"

@implementation JPCanvas (JPDrawingAdditions)

#pragma mark - Rectangle
- (void)drawRectangle:(JPRectangle)rectangle {
    [self saveGState];
    [self beginPath];
    CGFloat x, y;
    [self moveTo:rectangle.origin];
    [self addLineTo:CGPointMake(x = CGRectGetMaxX(rectangle), y)];
    [self addLineTo:CGPointMake(x, y = CGRectGetMaxY(rectangle))];
    [self addLineTo:CGPointMake(x = CGRectGetMinX(rectangle), y)];
    [self addLineTo:CGPointMake(x, y = CGRectGetMinY(rectangle))];
    [self strokePath];
    [self restoreGState];
}

#pragma mark - Lines
- (void)drawLine:(JPLine)line {
    [self drawLineFromPoint:line.fromPoint toPoint:line.toPoint];
}

- (void)drawLineFromPoint:(CGPoint)fromPoint toPoint:(CGPoint)toPoint {
    [self saveGState];
    [self beginPath];
    [self moveTo:fromPoint];
    [self addLineTo:toPoint];
    [self strokePath];
    [self restoreGState];
}

- (void)drawLines:(NSArray *)lines {
    [lines enumerateObjectsUsingBlock:^(NSValue *lineValue, NSUInteger idx, BOOL *stop) {
        JPLine line;
        if ([lineValue isKindOfClass:[NSArray class]]) {
            [lineValue getValue:&line];
            [self drawLine:line];
        }
    }];
}
@end