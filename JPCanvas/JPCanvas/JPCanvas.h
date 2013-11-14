//
// Created by John McGlone on 11/13/13.
// Copyright (c) 2013 JP. All rights reserved.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import <Foundation/Foundation.h>

@interface JPCanvas : NSObject

// Wrapper for CoreGraphics.  Of course, if you find this library doesn't support something you need, you can directly
// use the CoreGraphic functions and send over canvas.context !! :)

// KNOW THE TERMS
// add - just continues the path
// draw - continues path then strokes path
// move - if YES, moves to last point in method, else it stays put.
//        'move' is NO if no mention of move is in the method

@property (nonatomic, assign) CGContextRef context;

+ (JPCanvas *)defaultCanvas;

// CG Wrappers
// setters
- (void)setLineWidth:(CGFloat)lineWidth;
- (void)setStrokeColor:(UIColor *)strokeColor;
// moving around
- (void)beginPath;
- (void)moveTo:(CGPoint)point;
- (void)addLineTo:(CGPoint)point;
// other
- (void)strokePath;
- (void)saveGState;
- (void)restoreGState;

@end
