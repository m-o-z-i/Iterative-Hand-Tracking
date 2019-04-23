#ifndef TOOLS_H
#define TOOLS_H

#include <iostream>
#include <vector>
#include <regex>

#include <opencv2/core.hpp>

#include <QFileDialog>
#include <QtCore>

int getFileNames (std::string const& dir, std::vector<std::string> &files);
float clamp(float value, float min, float max);

QImage matToQImage(cv::Mat const& mat);  // function prototype

#endif // TOOLS_H
