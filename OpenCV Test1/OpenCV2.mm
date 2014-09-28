//
//  OpenCV2.mm
//  OpenCV Test1
//
//  Created by Shin on 2014/07/19.
//  Copyright (c) 2014年 shin. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "OpenCV Test1-Bridging-Header.h"

#import <opencv2/opencv.hpp>
#import <opencv2/highgui/ios.h>

@implementation OpenCV2 : NSObject
+ (UIImage *)BlurImage:(UIImage *)image {
    //UIImage -> cv::Mat
    cv::Mat mat;
    UIImageToMat(image, mat);
    
    // Blurフィルタ
    cv::Mat blur;
    cv::blur(mat, blur, cv::Size(10,10));
    
    // cv::Mat -> UIImage
    UIImage *retImg = MatToUIImage(blur);
    
    return retImg;
}

@end
