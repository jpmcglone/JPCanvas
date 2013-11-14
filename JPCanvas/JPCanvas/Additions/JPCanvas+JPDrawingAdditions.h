//
// Created by John McGlone on 11/13/13.
// Copyright (c) 2013 JP. All rights reserved.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import <Foundation/Foundation.h>
#import "JPCanvas.h"

// Shape structs
typedef struct {
    CGPoint fromPoint;
    CGPoint toPoint;
}JPLine;

typedef struct {
    CGPoint point1;
    CGPoint point2;
    CGPoint point3;
}JPTriangle;

typedef CGRect JPRectangle;

@interface JPCanvas (JPDrawingAdditions)
- (void)drawRectangle:(JPRectangle)rectangle;
- (void)drawLine:(JPLine)line;
- (void)drawLineFromPoint:(CGPoint)fromPoint toPoint:(CGPoint)toPoint;
- (void)drawLines:(NSArray *)lines;
@end