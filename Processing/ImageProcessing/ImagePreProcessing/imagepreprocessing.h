#ifndef IMAGEPREPROCESSING_H
#define IMAGEPREPROCESSING_H

#include <opencv2/core.hpp>

#include "Processing/ImageProcessing/ImagePreProcessing/backgroundsubstraction.h"
#include "Processing/ImageProcessing/ConnectedComponents/connectedcomponents.h"
#include "Processing/ImageProcessing/ImagePreProcessing/rectification.h"

class ImagePreProcessing
{
public:
    ImagePreProcessing();
    const cv::Mat &process(const cv::Mat& image);

    void setResolution(const cv::Size& resolution);

private:
    cv::Mat mImage;
    cv::Size mOldResolution;
    cv::Size mNewResolution;
    cv::Size mResolution;

    cv::Rect mCropRect;

    std::string mPath;
    Rectification mRectification;
};

#endif // IMAGEPREPROCESSING_H
