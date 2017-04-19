// *************************************************************************************************
// # MARK: Pbulic Interfaces


#import "UIImage+Extension.h"


// *************************************************************************************************
// # MARK: Implementation


@implementation UIImage (Extension)


- (UIImage *)scaledToSize:(CGSize)newSize {
    UIGraphicsBeginImageContextWithOptions(newSize, NO, 0.0);
    [self drawInRect:CGRectMake(0, 0, newSize.width, newSize.height)];
    UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return newImage;
}


@end
