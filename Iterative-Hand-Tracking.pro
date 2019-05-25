QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

#TARGET = Iterative-Hand-Tracking

TEMPLATE = app
CONFIG += c++11
CONFIG += optimize_full

#QMAKE_CXXFLAGS += -std=c++11
#QMAKE_CXXFLAGS += -std=c++11 -fopenmp -fPIC -g -fexpensive-optimizations -D_GNULINUX -O3


INCLUDEPATH += C:/Dev/Anaconda3/envs/Iterative-Hand-Tracking/Library/include
INCLUDEPATH += D:\01_Studium\Bauhaus-Weimar\Bachelor\Code\FlyCapture\include


win32:CONFIG(release, debug|release): LIBS += -LC:/Dev/Anaconda3/envs/Iterative-Hand-Tracking/Library/lib \
                    -lopencv_objdetect341 \
                    -lopencv_videoio341 \
                    -lopencv_calib3d341 \
                    -lopencv_features2d341 \
                    -lopencv_highgui341 \
                    -lopencv_flann341 \
                    -lopencv_imgcodecs341 \
                    -lopencv_imgproc341 \
                    -lopencv_core341 \
                    -lboost_system \
                    -LD:/01_Studium/Bauhaus-Weimar/Bachelor/Code/FlyCapture/lib64 \
                    -lFlyCapture2_v100 \
                    -fopenmp

unix:!macx: LIBS += -LC:/Dev/Anaconda3/envs/Iterative-Hand-Tracking/Library/lib \
                    -lopencv_objdetect \
                    -lopencv_videoio \
                    -lopencv_calib3d \
                    -lopencv_features2d \
                    -lopencv_highgui \
                    -lopencv_flann \
                    -lopencv_imgcodecs \
                    -lopencv_imgproc \
                    -lopencv_core \
                    -lboost_system \
                    -lflycapture \
                    -fopenmp


SOURCES += main.cpp \
    Network/tuiosender.cpp \
    Processing/ImageProcessing/ImagePreProcessing/rectification.cpp \
    Processing/ImageProcessing/ImagePreProcessing/backgroundsubstraction.cpp \
    Classification/classification.cpp \
    InputDevice/CaptureDevice/grasshoppercamera.cpp \
    Processing/ImageProcessing/imageprocessing.cpp \
    Processing/ImageProcessing/ImagePreProcessing/imagepreprocessing.cpp \
    Tools/tools.cpp \
    Tracking/handtracker.cpp \
    InputDevice/CaptureDevice/imagefolder.cpp \
    UI/imageprocessingwindow.cpp \
    Processing/ImageProcessing/MSER/mser.cpp \
    Processing/ImageProcessing/ConnectedComponents/connectedcomponents.cpp \
    Tools/visualisation.cpp \
    UI/calibrationwindow.cpp \
    Processing/ImageProcessing/Calibration/calibration.cpp \
    Network/Osc/OscOutboundPacketStream.cpp \
    Network/Osc/OscReceivedElements.cpp \
    Network/Osc/OscTypes.cpp \
    UI/createmaxwindow.cpp \
    Tracking/trackingalgorithm.cpp \
    handmodel.cpp \
    Tools/config.cpp \
    InputDevice/CaptureDevice/videofile.cpp \
    InputDevice/CaptureDevice/cameradevice.cpp \
    Clustering/mserclustering.cpp \
    globalsettings.cpp

HEADERS += \
    Network/Osc/MessageMappingOscPacketListener.h \
    Network/Osc/OscException.h \
    Network/Osc/OscHostEndianness.h \
    Network/Osc/OscOutboundPacketStream.h \
    Network/Osc/OscPacketListener.h \
    Network/Osc/OscReceivedElements.h \
    Network/Osc/OscTypes.h \
    InputDevice/CaptureDevice/videofile.h \
    InputDevice/CaptureDevice/cameradevice.h \
    Classification/classification.h \
    Clustering/mserclustering.h \
    InputDevice/CaptureDevice/capturedevice.h \
    InputDevice/CaptureDevice/grasshoppercamera.h \
    InputDevice/CaptureDevice/imagefolder.h \
    Network/tuiosender.h \
    Processing/ImageProcessing/Calibration/calibration.h \
    Processing/ImageProcessing/ConnectedComponents/connectedcomponents.h \
    Processing/ImageProcessing/Filter/doubleexponentialsmoothing.h \
    Processing/ImageProcessing/Filter/oneeurofilter.h \
    Processing/ImageProcessing/ImagePreProcessing/backgroundsubstraction.h \
    Processing/ImageProcessing/ImagePreProcessing/imagepreprocessing.h \
    Processing/ImageProcessing/ImagePreProcessing/rectification.h \
    Processing/ImageProcessing/MSER/mserellipse.h \
    Processing/ImageProcessing/MSER/mser.h \
    Processing/ImageProcessing/imageprocessing.h \
    Tools/config.h \
    Tools/tools.h \
    Tools/visualisation.h \
    Tracking/handtracker.h \
    Tracking/trackingalgorithm.h \
    UI/calibrationwindow.h \
    UI/createmaxwindow.h \
    UI/imageprocessingwindow.h \
    blob.h \
    hand.h \
    handmodel.h \
    globalsettings.h

FORMS += \
    UI/imageprocessingwindow.ui \
    UI/calibrationwindow.ui \
    UI/createmaxwindow.ui

DISTFILES += \
    Data/handmodel \
    config \
    handmodel
