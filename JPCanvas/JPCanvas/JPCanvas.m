//
// Created by John McGlone on 11/13/13.
// Copyright (c) 2013 JP. All rights reserved.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import "JPCanvas.h"


@implementation JPCanvas

+ (JPCanvas *)defaultCanvas {
    static dispatch_once_t once;
    static JPCanvas *defaultCanvas;
    dispatch_once (&once, ^{
        defaultCanvas = [JPCanvas new];
    });
    return defaultCanvas;
}

#pragma mark - Wrappers
- (void)setLineWidth:(CGFloat)lineWidth {
    CGContextSetLineWidth(self.context, lineWidth);
}

- (void)setStrokeColor:(UIColor *)strokeColor {
    CGContextSetStrokeColorWithColor(self.context, strokeColor.CGColor);
}

- (void)beginPath {
    CGContextBeginPath(self.context);
}

- (void)moveTo:(CGPoint)point {
    CGContextMoveToPoint(self.context, point.x, point.y);
}

- (void)addLineTo:(CGPoint)point {
    CGContextAddLineToPoint(self.context, point.x, point.y);
}

- (void)strokePath {
    CGContextStrokePath(self.context);
}

- (void)saveGState {
    CGContextSaveGState(self.context);
}

- (void)restoreGState {
    CGContextRestoreGState(self.context);
}

@end
