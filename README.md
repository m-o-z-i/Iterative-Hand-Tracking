# mser-tracking
From dissociated moving points to robust input recognition: 
hand and finger tracking on multi-touch surfaces based on diffuse illumination.

## how to install
mkdir build  
cd build  
qmake ..        *(need qmake 3.0 -> set by export QT_SELECT=qt5)  
make  

## how to start
cd build  
add boost and opencv3 directories (e.g. export LD_LIBRARY_PATH="/opt/boost/boost_1_55_0/lib:/opt/OpenCV/opencv-3.0.0/lib")  
./mser-tracking  
