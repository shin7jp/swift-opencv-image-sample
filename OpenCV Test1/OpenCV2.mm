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
+ (UIImage *)DetectEdgeWithImage:(UIImage *)image {
    //UIImageをcv::Matに変換
    cv::Mat mat;
    UIImageToMat(image, mat);
    
    //グレー画像に変換
    cv::Mat gray;
    cv::cvtColor(mat, gray, CV_BGR2GRAY);
    
    // エッジ検出
    cv::Mat edge;
    cv::Canny(gray, edge, 200, 100);
    
    // cv::MatをUIImageに変換
    UIImage *edgeImg = MatToUIImage(edge);
    
    return edgeImg;
}

@end
