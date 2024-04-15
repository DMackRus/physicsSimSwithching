#pragma once

#include "ModelTranslator.h"

class Acrobot : virtual public ModelTranslator{
public:

    Acrobot(){
        std::string yamlFilePath = "/src/tests/test_configs/acrobot.yaml";

        InitModelTranslator(yamlFilePath);
    }

};
