// *************************************************************************************************
// # MARK: Imports


#import "iBPMBackButton.h"


// *************************************************************************************************
// # MARK: Implementation


@implementation iBPMBackButton


- (void)drawRect:(CGRect)rect {
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    //// Color Declarations
    UIColor* shadow;
    shadow = [UIColor clearColor];
    UIColor* chevronColor = [UIColor redColor];
    
    //// Shadow Declarations
    CGSize shadowOffset = CGSizeMake(0.1, 1.1);
    CGFloat shadowBlurRadius = 0;
    
    //// Frames
    CGRect frame = self.bounds;
    
    //// chevron Drawing
    UIBezierPath* chevronPath = [UIBezierPath bezierPath];
    [chevronPath moveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.22000 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.01667 * CGRectGetHeight(frame))];
    [chevronPath addLineToPoint: CGPointMake(CGRectGetMinX(frame) + 0.98000 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.48333 * CGRectGetHeight(frame))];
    [chevronPath addLineToPoint: CGPointMake(CGRectGetMinX(frame) + 0.22000 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.98333 * CGRectGetHeight(frame))];
    [chevronPath addLineToPoint: CGPointMake(CGRectGetMinX(frame) + 0.02000 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.81667 * CGRectGetHeight(frame))];
    [chevronPath addLineToPoint: CGPointMake(CGRectGetMinX(frame) + 0.54000 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.48333 * CGRectGetHeight(frame))];
    [chevronPath addLineToPoint: CGPointMake(CGRectGetMinX(frame) + 0.02000 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.15000 * CGRectGetHeight(frame))];
    [chevronPath addLineToPoint: CGPointMake(CGRectGetMinX(frame) + 0.22000 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.01667 * CGRectGetHeight(frame))];
    [chevronPath closePath];
    CGContextSaveGState(context);
    CGContextSetShadowWithColor(context, shadowOffset, shadowBlurRadius, shadow.CGColor);
    [chevronColor setFill];
    [chevronPath fill];
    CGContextRestoreGState(context);
}


@end
