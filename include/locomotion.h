#pragma once

#include "modelTranslator.h"

class walker : public modelTranslator {
public:
    walker();

    bool taskComplete(int dataIndex, double &dist) override;
    void generateRandomGoalAndStartState() override;
    MatrixXd returnRandomStartState() override;
    MatrixXd returnRandomGoalState(MatrixXd X0) override;

    std::vector<MatrixXd> createInitOptimisationControls(int horizonLength) override;

};
