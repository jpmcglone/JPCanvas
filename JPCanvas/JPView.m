//
// Created by John McGlone on 11/13/13.
// Copyright (c) 2013 JP. All rights reserved.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import "JPView.h"
#import "JPCanvas.h"
#import "JPCanvas+JPDrawingAdditions.h"

@implementation JPView

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor whiteColor];
    }
    return self;
}

- (void)drawRect:(CGRect)rect
{
    JPCanvas *canvas = [JPCanvas defaultCanvas];
    canvas.context = UIGraphicsGetCurrentContext();
    [canvas setLineWidth:1];
    [canvas setStrokeColor:[UIColor redColor]];

    [canvas beginPath];
    [canvas moveTo:CGPointZero];
    [canvas addLineTo:CGPointMake(100, 100)];
    [canvas addLineTo:CGPointMake(100, 200)];
    [canvas addLineTo:CGPointMake(200, 200)];
    [canvas strokePath];

    [canvas drawLineFromPoint:CGPointMake(10, 20) toPoint:CGPointMake(10, 100)];
}

@end