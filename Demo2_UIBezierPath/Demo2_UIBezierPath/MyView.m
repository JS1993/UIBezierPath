//
//  MyView.m
//  Demo2_UIBezierPath
//
//  Created by  江苏 on 16/2/17.
//  Copyright © 2016年 jiangsu. All rights reserved.
//

#import "MyView.h"

@implementation MyView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    UIBezierPath* path=[UIBezierPath bezierPath];
    [path moveToPoint:CGPointMake(20, 20)];
    [path addLineToPoint:CGPointMake(20, 120)];
    [path addLineToPoint:CGPointMake(100, 20)];
    [path addLineToPoint:CGPointMake(20, 20)];
    [[UIColor redColor]setStroke];
    [[UIColor greenColor]setFill];
    path.lineWidth = 8;
    path.lineCapStyle = kCGLineCapSquare;
    path.lineJoinStyle = kCGLineJoinMiter;
    [path stroke];
    [path fill];
}


@end
