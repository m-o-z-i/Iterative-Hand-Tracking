#ifndef IMAGE_STREAM_H
#define IMAGE_STREAM_H

#include <opencv2/core.hpp>
#include <opencv2/highgui.hpp>

#include "capturedevice.h"
#include "Tools/tools.h"

// todo: delete
#include "globalsettings.h"

class ImageFolder : public CaptureDevice {

    public:
        ImageFolder(std::string imagePath);

        /*virtual*/ const cv::Mat &capture();
        /*virtual*/ void pause();
        /*virtual*/ void resume();
        /*virtual*/ void next();
        /*virtual*/ bool getStatus() const;
        /*virtual*/ void disconnect();

        std::string getImagePath() const;
        void setImagePath(const std::string &value);

private:
        cv::Size                 mImageSize;
        cv::Mat                  mImage;

        std::vector<std::string> mImageNames;
        unsigned int             mIndex;
        std::string              mImagePath;
        bool                     mPause;
};

#endif //IMAGE_STREAM_H

