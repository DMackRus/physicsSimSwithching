//#ifndef PHYSICSSIMSWITCHING_DIFFERENTIATOR_H
//#define PHYSICSSIMSWITCHING_DIFFERENTIATOR_H

#ifndef DIFFERENTIATOR_H
#define DIFFERENTIATOR_H

#include "../modelTranslator/modelTranslator.h"
#include "../physicsSimulators/MuJoCoHelper.h"
#include "mujoco.h"


class differentiator{
public:
    differentiator(modelTranslator *_modelTranslator, MuJoCoHelper *_physicsSimulator);

    void getDerivatives(MatrixXd &A, MatrixXd &B, bool costDerivs, int dataIndex);

private:
    modelTranslator *activeModelTranslator;
    MuJoCoHelper *activePhysicsSimulator;
    mjModel *m;

};

#endif