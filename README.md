# Iterative-Hand-Tracking
From dissociated moving points to robust input recognition: 
hand and finger tracking on multi-touch surfaces based on diffuse illumination.

This software was developed for my bachelor thesis (http://moritz-loos.de/Projects/Iterative-Hand-Tracking/index.html).  

## Overview
this is a multitouch software for diffuse illumination tabletops with hand, arm and potential user detection. Instead of simple blob tracking Iterative-Hand-Tracking is using a handmodel and a hierarchical tracking approach to track more robust hands and corresponding fingers. It automatically can distinguish between left and right hand and classify each finger (thumb, index, ...). This provides a new range of possible gestures (see: https://www.uni-weimar.de/de/medien/professuren/medieninformatik/vr/research/hci/rst-3d/).

## How it works
1. Detection and Classification with MSER implemented based on the paper from Philipp Ewerling et al. (see: https://dl.acm.org/citation.cfm?id=2396663)
2. Hierarchical tracking of hands and fingers using ICP
3. Send hand and finger events via TUIO

## Setup
This software needs a diffuse illumination setup. It can interface with various web cameras and video devices. You can use a folder with images or a video file as input too. Please adjust the tabletop settings inside the config file according to your tabletop size and follow the calibration setup (Menu -> Calibrate) for best results. 

### Camera not supported
If your camera is not supported it is easy to integrate your own. Use the capturedevice class as base class and implement your serial interface according to the base class (example: see grasshoppercamera class).

### Example Images
You can download example images here: https://drive.google.com/drive/folders/1H5bBcEl23R20VWlJ65zTxCykOlS0STv6?usp=sharing

## how to install
mkdir build  
cd build  
qmake ..
make