#pragma once

#include "StdInclude.h"
#include "MuJoCoHelper.h"
#include "ModelTranslator.h"

class PushBaseClass: virtual public ModelTranslator{
public:

    PushBaseClass(std::string _EE_name, std::string _body_name);

    void EEWayPointsSetup(std::shared_ptr<MuJoCoHelper> MuJoCo_helper, m_point desiredObjectEnd,
                          std::vector<m_point>& mainWayPoints, std::vector<int>& wayPointsTiming, int horizon);

    void EEWayPointsPush(std::shared_ptr<MuJoCoHelper> MuJoCo_helper, m_point desiredObjectEnd,
                         std::vector<m_point>& mainWayPoints, std::vector<int>& wayPointsTiming, int horizon);

    std::vector<m_point> CreateAllEETransitPoints(const std::vector<m_point> &mainWayPoints, const std::vector<int> &wayPointsTiming);

    std::vector<MatrixXd> JacobianEEControl(std::shared_ptr<MuJoCoHelper> MuJoCo_helper, m_point goal_pos, const std::vector<m_point> &EE_path);


private:
    std::string EE_name;
    std::string body_name;
};