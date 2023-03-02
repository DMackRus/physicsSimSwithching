//
// Created by dave on 01/03/23.
//

#ifndef PHYSICSSIMSWITCHING_STDINCLUDE_H
#define PHYSICSSIMSWITCHING_STDINCLUDE_H

#include <iostream>
#include <fstream>
#include <string>
#include <vector>
#include <Eigen/Dense>

using namespace std;
using namespace Eigen;

typedef Eigen::Matrix<double, 3, 1> m_point;
typedef Eigen::Matrix<double, 4, 1> m_quat;

m_quat eul2Quat(m_point eulerAngles);
m_point quat2Eul(m_quat quaternion);



#endif //PHYSICSSIMSWITCHING_STDINCLUDE_H
