//
// Created by dave on 01/03/23.
//

#include "MuJoCoHelper.h"

// Empty constructor
MuJoCoHelper::MuJoCoHelper(vector<robot> _robots, vector<string> _bodies): physicsSimulator(_robots, _bodies) {
    std::cout << "created mujoco helper" << std::endl;
}

// ------------------------------------    ROBOT UTILITY   --------------------------------------------
// Checks whether a robot of this name exists in the simulation
bool MuJoCoHelper::isValidRobotName(string robotName, int &robotIndex, string &robotBaseJointName){
    bool validRobot = false;
    for(int i = 0; i < robots.size(); i++){
        if(robots[i].name == robotName){
            validRobot = true;
            robotBaseJointName = robots[i].jointNames[0];
            robotIndex = i;
        }
    }

    return validRobot;
}

// Sets a robot joint positions the given values
bool MuJoCoHelper::setRobotJointsPositions(string robotName, vector<double> jointPositions, int dataIndex){

    // Check if the robot exists in the simulation
    int robotIndex;
    string robotBaseJointName;
    if(isValidRobotName(robotName, robotIndex, robotBaseJointName)){
        if(jointPositions.size() != robots[robotIndex].numActuators){
            cout << "Invalid number of joint positions\n";
            return false;
        }
    }
    else{
        cout << "That robot doesnt exist in the simulation\n";
        return false;
    }

    // Get the body id of the base link of the robot
    int jointId = mj_name2id(model, mjOBJ_JOINT, robotBaseJointName.c_str());

    if(jointId == -1){
        cout << "Base link of robot not found\n";
        return false;
    }

    
    int startIndex = model->jnt_qposadr[jointId];

    if(startIndex == MAIN_DATA_STATE){
        cout << "Invalid bodyId for robot\n";
        return false;
    }

    mjData *d = returnDesiredDataState(dataIndex);
    // use mdata
//    if(dataIndex == MAIN_DATA_STATE){
//        d = mdata;
//    }
//    // use a saved data state
//    else{
//        if(savedSystemStatesList.size() < dataIndex){
//            cout << "invalid data index, out of size of save system state list \n";
//            return false;
//        }
//        d = savedSystemStatesList[dataIndex];
//    }

    for(int i = 0; i < jointPositions.size(); i++){
        d->qpos[startIndex + i] = jointPositions[i];
    }

    return true;
}

// Sets a robot joint velocities the given values
bool MuJoCoHelper::setRobotJointsVelocities(string robotName, vector<double> jointVelocities, int dataIndex){

    // Check if the robot exists in the simulation
    int robotIndex;
    string robotBaseJointName;
    if(isValidRobotName(robotName, robotIndex, robotBaseJointName)){
        if(jointVelocities.size() != robots[robotIndex].numActuators){
            cout << "Invalid number of joint positions\n";
            return false;
        }
    }
    else{
        cout << "That robot doesnt exist in the simulation\n";
        return false;
    }

    // Get the body id of the base link of the robot
    int jointId = mj_name2id(model, mjOBJ_JOINT, robotBaseJointName.c_str());

    if(jointId == -1){
        cout << "Base link of robot not found\n";
        return false;
    }
    int startIndex = model->jnt_dofadr[jointId];

    if(startIndex == -1){
        cout << "Invalid bodyId for robot\n";
        return false;
    }

    mjData *d = returnDesiredDataState(dataIndex);
    // use mdata
//    if(dataIndex == MAIN_DATA_STATE){
//        d = mdata;
//    }
//    // use a saved data state
//    else{
//        if(savedSystemStatesList.size() < dataIndex){
//            cout << "invalid data index, out of size of save system state list \n";
//        }
//        d = savedSystemStatesList[dataIndex];
//    }

    for(int i = 0; i < jointVelocities.size(); i++){
        d->qvel[startIndex + i] = jointVelocities[i];
    }

    return true;
}

bool MuJoCoHelper::setRobotJointsControls(string robotName, vector<double> jointControls, int dataIndex){

    // Check if the robot exists in the simulation
    int robotIndex;
    string robotBaseJointName;
    if(isValidRobotName(robotName, robotIndex, robotBaseJointName)){
        if(jointControls.size() != robots[robotIndex].numActuators){
            cout << "Invalid number of joint positions\n";
            return false;
        }
    }
    else{
        cout << "That robot doesnt exist in the simulation\n";
        return false;
    }

    // Get the body id of the base link of the robot
    int jointId = mj_name2id(model, mjOBJ_JOINT, robotBaseJointName.c_str());

    if(jointId == -1){
        cout << "Base link of robot not found\n";
        return false;
    }
    int startIndex = model->jnt_dofadr[jointId];

    if(startIndex == -1){
        cout << "Invalid bodyId for robot\n";
        return false;
    }

    mjData *d = returnDesiredDataState(dataIndex);
    // use mdata
//    if(dataIndex == MAIN_DATA_STATE){
//        d = mdata;
//    }
//    // use a saved data state
//    else{
//        if(savedSystemStatesList.size() < dataIndex){
//            cout << "invalid data index, out of size of save system state list \n";
//            return false;
//        }
//        d = savedSystemStatesList[dataIndex];
//    }

    for(int i = 0; i < jointControls.size(); i++){
        d->ctrl[startIndex + i] = jointControls[i];
    }

    return true;
}

bool MuJoCoHelper::getRobotJointsPositions(string robotName, vector<double> &jointPositions, int dataIndex){

    // Check if the robot exists in the simulation
    int robotIndex;
    string robotBaseJointName;
    if(!isValidRobotName(robotName, robotIndex, robotBaseJointName)){
        cout << "That robot doesnt exist in the simulation\n";
        return false;
    }

    // Get the body id of the base link of the robot
    int jointId = mj_name2id(model, mjOBJ_JOINT, robotBaseJointName.c_str());

    if(jointId == -1){
        cout << "Base link of robot not found\n";
        return false;
    }
    int startIndex = model->jnt_dofadr[jointId];

    if(startIndex == -1){
        cout << "Invalid bodyId for robot\n";
        return false;
    }

    mjData *d = returnDesiredDataState(dataIndex);
    // use mdata
//    if(dataIndex == MAIN_DATA_STATE){
//        d = mdata;
//    }
//    // use a saved data state
//    else{
//        if(savedSystemStatesList.size() < dataIndex){
//            cout << "invalid data index, out of size of save system state list \n";
//            return false;
//        }
//        d = savedSystemStatesList[dataIndex];
//    }

    for(int i = 0; i < robots[robotIndex].jointNames.size(); i++){
        jointPositions.push_back(d->qpos[startIndex + i]);
    }

    return true;
}

bool MuJoCoHelper::getRobotJointsVelocities(string robotName, vector<double> &jointVelocities, int dataIndex) {

    // Check if the robot exists in the simulation
    int robotIndex;
    string robotBaseJointName;
    if(!isValidRobotName(robotName, robotIndex, robotBaseJointName)){
        cout << "That robot doesnt exist in the simulation\n";
        return false;
    }

    // Get the body id of the base link of the robot
    int jointId = mj_name2id(model, mjOBJ_JOINT, robotBaseJointName.c_str());

    if(jointId == -1){
        cout << "Base link of robot not found\n";
        return false;
    }
    int startIndex = model->jnt_dofadr[jointId];

    if(startIndex == -1){
        cout << "Invalid bodyId for robot\n";
        return false;
    }

    mjData *d = returnDesiredDataState(dataIndex);
    // use mdata
//    if(dataIndex == MAIN_DATA_STATE){
//        d = mdata;
//    }
//    // use a saved data state
//    else{
//        if(savedSystemStatesList.size() < dataIndex){
//            cout << "invalid data index, out of size of save system state list \n";
//            return false;
//        }
//        d = savedSystemStatesList[dataIndex];
//    }

    for(int i = 0; i < robots[robotIndex].jointNames.size(); i++){
        jointVelocities.push_back(d->qvel[startIndex + i]);
    }

    return true;
}

bool MuJoCoHelper::getRobotJointsAccelerations(string robotName, vector<double> &jointAccelerations, int dataIndex){
    int robotIndex;
    string robotBaseJointName;
    if(!isValidRobotName(robotName, robotIndex, robotBaseJointName)){
        cout << "That robot doesnt exist in the simulation\n";
        return false;
    }

    // Get the body id of the base link of the robot
    int jointId = mj_name2id(model, mjOBJ_JOINT, robotBaseJointName.c_str());

    if(jointId == -1){
        cout << "Base link of robot not found\n";
        return false;
    }
    int startIndex = model->jnt_dofadr[jointId];

    if(startIndex == -1){
        cout << "Invalid bodyId for robot\n";
        return false;
    }

    mjData *d = returnDesiredDataState(dataIndex);
    // use mdata
//    if(dataIndex == MAIN_DATA_STATE){
//        d = mdata;
//    }
//    // use a saved data state
//    else{
//        if(savedSystemStatesList.size() < dataIndex){
//            cout << "invalid data index, out of size of save system state list \n";
//            return false;
//        }
//        d = savedSystemStatesList[dataIndex];
//    }

    for(int i = 0; i < robots[robotIndex].jointNames.size(); i++){
        jointAccelerations.push_back(d->qacc[startIndex + i]);
    }

    return true;
}

bool MuJoCoHelper::getRobotJointsControls(string robotName, vector<double> &jointControls, int dataIndex) {

    // Check if the robot exists in the simulation
    int robotIndex;
    string robotBaseJointName;
    if(!isValidRobotName(robotName, robotIndex, robotBaseJointName)){
        cout << "That robot doesnt exist in the simulation\n";
        return false;
    }

    // Get the body id of the base link of the robot
    int jointId = mj_name2id(model, mjOBJ_JOINT, robotBaseJointName.c_str());

    if(jointId == -1){
        cout << "Base link of robot not found\n";
        return false;
    }
    int startIndex = model->jnt_dofadr[jointId];

    if(startIndex == -1){
        cout << "Invalid bodyId for robot\n";
        return false;
    }

    mjData *d = returnDesiredDataState(dataIndex);
    // use mdata
//    if(dataIndex == MAIN_DATA_STATE){
//        d = mdata;
//    }
//    // use a saved data state
//    else{
//        if(savedSystemStatesList.size() < dataIndex){
//            cout << "invalid data index, out of size of save system state list \n";
//            return false;
//        }
//        d = savedSystemStatesList[dataIndex];
//    }

    for(int i = 0; i < robots[robotIndex].jointNames.size(); i++){
        jointControls.push_back(d->ctrl[startIndex + i]);
    }

    return true;
}

bool MuJoCoHelper::getRobotJointsGravityCompensaionControls(string robotName, vector<double> &jointsControls, int dataIndex){

    // Check if the robot exists in the simulation
    int robotIndex;
    string robotBaseJointName;
    if(!isValidRobotName(robotName, robotIndex, robotBaseJointName)){
        cout << "That robot doesnt exist in the simulation\n";
        return false;
    }

    // Get the body id of the base link of the robot
    int jointId = mj_name2id(model, mjOBJ_JOINT, robotBaseJointName.c_str());

    if(jointId == -1){
        cout << "Base link of robot not found\n";
        return false;
    }
    int startIndex = model->jnt_dofadr[jointId];

    if(startIndex == -1){
        cout << "Invalid bodyId for robot\n";
        return false;
    }

    mjData *d = returnDesiredDataState(dataIndex);
    // use mdata
//    if(dataIndex == MAIN_DATA_STATE){
//        d = mdata;
//    }
//    // use a saved data state
//    else{
//        if(savedSystemStatesList.size() < dataIndex){
//            cout << "invalid data index, out of size of save system state list \n";
//            return false;
//        }
//        d = savedSystemStatesList[dataIndex];
//    }

    for(int i = 0; i < robots[robotIndex].jointNames.size(); i++){
        jointsControls.push_back(d->qfrc_bias[startIndex + i]);
    }

    return true;
}

// --------------------------------- END OF ROBOT UTILITY ---------------------------------------

// ------------------------------------- BODY UTILITY -------------------------------------------
bool MuJoCoHelper::isValidBodyName(string bodyName, int &bodyIndex){
    for(int i = 0; i < bodies.size(); i++){
        if(bodies[i] == bodyName){
            bodyIndex = i;
            return true;
        }
    }
    // return false;
    return true;
}

bool MuJoCoHelper::setBodyPose_quat(string bodyName, pose_7 pose, int dataIndex){

    int bodyIndex;
    if(!isValidBodyName(bodyName, bodyIndex)){
        cout << "That body doesnt exist in the simulation\n";
        return false;
    }

    int bodyId = mj_name2id(model, mjOBJ_BODY, bodyName.c_str());
    const int jointIndex = model->body_jntadr[bodyId];
    const int qposIndex = model->jnt_qposadr[jointIndex];

    mjData *d = returnDesiredDataState(dataIndex);
    // use mdata
//    if(dataIndex == MAIN_DATA_STATE){
//        d = mdata;
//    }
//    // use a saved data state
//    else{
//        if(savedSystemStatesList.size() < dataIndex){
//            cout << "invalid data index, out of size of save system state list \n";
//            return false;
//        }
//        d = savedSystemStatesList[dataIndex];
//    }

    for(int i = 0; i < 3; i++){
        d->qpos[qposIndex + i] = pose.position(i);
    }

    for(int i = 0; i < 4; i++){
        d->qpos[qposIndex + 3 + i] = pose.quat(i);
    }

    return true;
}

bool MuJoCoHelper::setBodyPose_angle(string bodyName, pose_6 pose, int dataIndex){

    int bodyIndex;
    if(!isValidBodyName(bodyName, bodyIndex)){
        cout << "That body doesnt exist in the simulation: " << bodyName << "\n";
        return false;
    }

    int bodyId = mj_name2id(model, mjOBJ_BODY, bodyName.c_str());
    const int jointIndex = model->body_jntadr[bodyId];
    const int qposIndex = model->jnt_qposadr[jointIndex];

    m_quat q = eul2Quat(pose.orientation);

    mjData *d = returnDesiredDataState(dataIndex);
//    // use mdata
//    if(dataIndex == MAIN_DATA_STATE){
//        d = mdata;
//    }
//    // use a saved data state
//    else{
//        if(savedSystemStatesList.size() < dataIndex){
//            cout << "invalid data index, out of size of save system state list \n";
//            return false;
//        }
//        d = savedSystemStatesList[dataIndex];
//    }

    for(int i = 0; i < 3; i++){
        d->qpos[qposIndex + i] = pose.position(i);
    }

    for(int i = 0; i < 4; i++){
        d->qpos[qposIndex + 3 + i] = q(i);
    }

    return true;
}

bool MuJoCoHelper::setBodyVelocity(string bodyName, pose_6 velocity, int dataIndex){

    int bodyIndex;
    if(!isValidBodyName(bodyName, bodyIndex)){
        cout << "That body doesnt exist in the simulation\n";
        return false;
    }

    int bodyId = mj_name2id(model, mjOBJ_BODY, bodyName.c_str());
    const int jointIndex = model->body_jntadr[bodyId];
    const int qvelIndex = model->jnt_dofadr[jointIndex];

    mjData *d = returnDesiredDataState(dataIndex);
    // use mdata
//    if(dataIndex == MAIN_DATA_STATE){
//        d = mdata;
//    }
//    // use a saved data state
//    else{
//        if(savedSystemStatesList.size() < dataIndex){
//            cout << "invalid data index, out of size of save system state list \n";
//            return false;
//        }
//        d = savedSystemStatesList[dataIndex];
//    }

    for(int i = 0; i < 3; i++){
        d->qvel[qvelIndex + i] = velocity.position(i);
    }

    for(int i = 0; i < 3; i++){
        d->qvel[qvelIndex + 3 + i] = velocity.orientation(i);
    }

    return true;
}

bool MuJoCoHelper::getBodyPose_quat(string bodyName, pose_7 &pose, int dataIndex){
    int bodyIndex;
    if(!isValidBodyName(bodyName, bodyIndex)){
        cout << "That body doesnt exist in the simulation\n";
        return false;
    }

    int bodyId = mj_name2id(model, mjOBJ_BODY, bodyName.c_str());
    const int jointIndex = model->body_jntadr[bodyId];
    const int qposIndex = model->jnt_qposadr[jointIndex];

    mjData *d = returnDesiredDataState(dataIndex);
    // use mdata
//    if(dataIndex == MAIN_DATA_STATE){
//        d = mdata;
//    }
//    // use a saved data state
//    else{
//        if(savedSystemStatesList.size() < dataIndex){
//            cout << "invalid data index, out of size of save system state list \n";
//            return false;
//        }
//        d = savedSystemStatesList[dataIndex];
//    }

    for(int i = 0; i < 3; i++){
        pose.position(i) = d->xpos[(bodyId * 3) + i];
    }

    for(int i = 0; i < 4; i++){
        pose.quat(i) = d->xquat[(bodyId * 4) + i];
    }

    return true;
}

bool MuJoCoHelper::getBodyPose_angle(string bodyName, pose_6 &pose, int dataIndex){
    int bodyIndex;
    if(!isValidBodyName(bodyName, bodyIndex)){
        cout << "That body doesnt exist in the simulation " << bodyName << endl;
        return false;
    }

    int bodyId = mj_name2id(model, mjOBJ_BODY, bodyName.c_str());
    const int jointIndex = model->body_jntadr[bodyId];
    const int qposIndex = model->jnt_qposadr[jointIndex];

    mjData *d = returnDesiredDataState(dataIndex);
    // use mdata
//    if(dataIndex == MAIN_DATA_STATE){
//        d = mdata;
//    }
//    // use a saved data state
//    else{
//        if(savedSystemStatesList.size() < dataIndex){
//            cout << "invalid data index, out of size of save system state list \n";
//            return false;
//        }
//        d = savedSystemStatesList[dataIndex];
//    }

    for(int i = 0; i < 3; i++){
        pose.position(i) = d->xpos[(bodyId * 3) + i];
    }

    m_quat tempQuat;

    for(int i = 0; i < 4; i++){
        tempQuat(i) = d->xquat[(bodyId * 4) + i];
    }

    m_point euler = quat2Eul(tempQuat);

    for(int i = 0; i < 3; i++){
        pose.orientation(i) = euler(i);
    }

    return true;
}

bool MuJoCoHelper::getBodyVelocity(string bodyName, pose_6 &velocity, int dataIndex){
    int bodyIndex;
    if(!isValidBodyName(bodyName, bodyIndex)){
        cout << "That body doesnt exist in the simulation\n";
        return false;
    }

    int bodyId = mj_name2id(model, mjOBJ_BODY, bodyName.c_str());
    const int jointIndex = model->body_jntadr[bodyId];
    const int qvelIndex = model->jnt_dofadr[jointIndex];

    mjData *d = returnDesiredDataState(dataIndex);
    // use mdata
//    if(dataIndex == MAIN_DATA_STATE){
//        d = mdata;
//    }
//    // use a saved data state
//    else{
//        if(savedSystemStatesList.size() < dataIndex){
//            cout << "invalid data index, out of size of save system state list \n";
//            return false;
//        }
//        d = savedSystemStatesList[dataIndex];
//    }

    for(int i = 0; i < 3; i++){
        velocity.position(i) = d->qvel[qvelIndex + i];
    }

    for(int i = 0; i < 3; i++){
        velocity.orientation(i) = d->qvel[qvelIndex + 3 + i];
    }

    return true;
}

bool MuJoCoHelper::getBodyAcceleration(string bodyName, pose_6 &acceleration, int dataIndex){
    int bodyIndex;
    if(!isValidBodyName(bodyName, bodyIndex)){
        cout << "That body doesnt exist in the simulation\n";
        return false;
    }

    int bodyId = mj_name2id(model, mjOBJ_BODY, bodyName.c_str());
    const int jointIndex = model->body_jntadr[bodyId];
    const int qvelIndex = model->jnt_dofadr[jointIndex];

    mjData *d = returnDesiredDataState(dataIndex);
    // use mdata
//    if(dataIndex == MAIN_DATA_STATE){
//        d = mdata;
//    }
//    // use a saved data state
//    else{
//        if(savedSystemStatesList.size() < dataIndex){
//            cout << "invalid data index, out of size of save system state list \n";
//            return false;
//        }
//        d = savedSystemStatesList[dataIndex];
//    }

    for(int i = 0; i < 3; i++){
        acceleration.position(i) = d->qacc[qvelIndex + i];
    }

    for(int i = 0; i < 3; i++){
        acceleration.orientation(i) = d->qacc[qvelIndex + 3 + i];
    }

    return true;
}
// --------------------------------- END OF BODY UTILITY ---------------------------------------

// - TODO create jacobian dynamically for the robot
Eigen::MatrixXd MuJoCoHelper::calculateJacobian(std::string bodyName, int dataIndex){
    Eigen::MatrixXd kinematicJacobian(6, 7);

    mjData *d = returnDesiredDataState(dataIndex);
    // use mdata
//    if(dataIndex == MAIN_DATA_STATE){
//        d = mdata;
//    }
//    // use a saved data state
//    else{
//        d = savedSystemStatesList[dataIndex];
//    }

    //mjtNum* J_COMi_temp = mj_stackAlloc(_data, 3*_model->nv);
    Matrix<double, Dynamic, Dynamic, RowMajor> J_p(3, model->nv);
    Matrix<double, Dynamic, Dynamic, RowMajor> J_r(3, model->nv);

    int bodyId = mj_name2id(model, mjOBJ_BODY, bodyName.c_str());

    mj_jacBody(model, d, J_p.data(), J_r.data(), bodyId);

    for (int i = 0; i < 3; i++) {
        for (int j = 0; j < 7; j++) {
            kinematicJacobian(i, j) = J_p(i, j);
            //cout << kinematicJacobian(i, j) << endl;
        }
    }

    for (int i = 0; i < 3; i++) {
        for (int j = 0; j < 7; j++) {
            kinematicJacobian(i + 3, j) = J_r(i, j);
        }
    }

    return kinematicJacobian;
}

// ------------------------------- System State Functions -----------------------------------------------
bool MuJoCoHelper::appendSystemStateToEnd(int dataIndex){

    mjData *saveData = returnDesiredDataState(dataIndex);

    mjData *d = mj_makeData(model);
    cpMjData(model, d, saveData);

    savedSystemStatesList.push_back(d);

    return true;
}

bool MuJoCoHelper::checkIfDataIndexExists(int dataIndex){
    return (savedSystemStatesList.size() > dataIndex);
}

bool MuJoCoHelper::copySystemState(int dataDestinationIndex, int dataSourceIndex){

    mjData *dataDestination = returnDesiredDataState(dataDestinationIndex);

//    if(dataDestinationIndex == MAIN_DATA_STATE){
//        dataDestination = mdata;
//    }
//    else{
//        dataDestination = savedSystemStatesList[dataDestinationIndex];
//    }

    mjData *dataSource = returnDesiredDataState(dataSourceIndex);
//    if(dataSourceIndex == MAIN_DATA_STATE){
//        dataSource = mdata;
//    }
//    else{
//        dataSource = savedSystemStatesList[dataSourceIndex];
//    }

    cpMjData(model, dataDestination, dataSource);

    return true;
}

bool MuJoCoHelper::deleteSystemStateFromIndex(int listIndex){
    mj_deleteData(savedSystemStatesList[listIndex]);
    savedSystemStatesList.erase(savedSystemStatesList.begin() + listIndex);

    return true;
}

bool MuJoCoHelper::clearSystemStateList(){
    for(int i = 0; i < savedSystemStatesList.size(); i++){
        mj_deleteData(savedSystemStatesList[i]);
    }
    savedSystemStatesList.clear();

    return true;
}

void MuJoCoHelper::cpMjData(const mjModel* m, mjData* d_dest, const mjData* d_src){
    d_dest->time = d_src->time;
    mju_copy(d_dest->qpos, d_src->qpos, m->nq);
    mju_copy(d_dest->qvel, d_src->qvel, m->nv);
    mju_copy(d_dest->qacc, d_src->qacc, m->nv);
    mju_copy(d_dest->qacc_warmstart, d_src->qacc_warmstart, m->nv);
    mju_copy(d_dest->qfrc_applied, d_src->qfrc_applied, m->nv);
    mju_copy(d_dest->xfrc_applied, d_src->xfrc_applied, 6*m->nbody);
    mju_copy(d_dest->ctrl, d_src->ctrl, m->nu);
}

mjData* MuJoCoHelper::returnDesiredDataState(int dataIndex){
    if(dataIndex == MAIN_DATA_STATE){
        return mdata;
    }
    else if(dataIndex == MASTER_RESET_DATA){
        return d_master_reset;
    }
    else{
        return savedSystemStatesList[dataIndex];
    }
}
// ------------------------------- END OF SYSTEM STATE FUNCTIONS ----------------------------------------

bool MuJoCoHelper::stepSimulator(int steps, int dataIndex){

    mjData *d = returnDesiredDataState(dataIndex);

    for(int i = 0; i < steps; i++){
        mj_step(model, d);
    }
    return true;
}

// --------------------------------- Visualization Functions ---------------------------------------
void MuJoCoHelper::initVisualisation() {

    // initialize visualization data structures
    mjv_defaultCamera(&cam);
    //mjv_defaultPerturb(&pert);				// what data type for pert?
    mjv_defaultOption(&opt);
    mjr_defaultContext(&con);
    mjv_defaultScene(&scn);

    cam.distance = 10;
    cam.azimuth = 110.9;
    cam.elevation = -19.9;
    cam.lookat[0] = 0.396;
    cam.lookat[1] = -0.0629;
    cam.lookat[2] = 0.1622;

    // create scene and context
    mjv_makeScene(model, &scn, 2000);
    mjr_makeContext(model, &con, mjFONTSCALE_150);
}

void MuJoCoHelper::updateScene(GLFWwindow *window, const char* label){
    // update scene and render
    mjrRect viewport = {0, 0, 0, 0};
    glfwGetFramebufferSize(window, &viewport.width, &viewport.height);
    mjv_updateScene(model, mdata, &opt, NULL, &cam, mjCAT_ALL, &scn);

    mjr_render(viewport, &scn, &con);

    mjrRect rect{0, 0, 100, 100};
    mjr_rectangle(rect, 0, 0, 0, 0);

    mjr_overlay(0, mjGRID_TOPLEFT, rect, label, 0, &con);
}

void MuJoCoHelper::mouseMove(double dx, double dy, bool button_left, bool button_right,  GLFWwindow *window){
// get current window size
    int width, height;
    glfwGetWindowSize(window, &width, &height);

    // get shift key state
    bool mod_shift = (glfwGetKey(window, GLFW_KEY_LEFT_SHIFT) == GLFW_PRESS ||
                      glfwGetKey(window, GLFW_KEY_RIGHT_SHIFT) == GLFW_PRESS);

    //determine action based on mouse button
    mjtMouse action;
    if (button_right)
        action = mod_shift ? mjMOUSE_MOVE_H : mjMOUSE_MOVE_V;
    else if (button_left)
        action = mod_shift ? mjMOUSE_ROTATE_H : mjMOUSE_ROTATE_V;
    else
        action = mjMOUSE_ZOOM;

    // move camera
    mjv_moveCamera(model, action, dx / height, dy / height, &scn, &cam);
}

void MuJoCoHelper::scroll(double yoffset){
    mjv_moveCamera(model, mjMOUSE_ZOOM, 0, -0.05 * yoffset, &scn, &cam);
}

// --------------------------------- END OF VISUALIZATION FUNCTIONS ---------------------------------------

void MuJoCoHelper::initSimulator(double timestep, const char* fileName){
    char error[1000];
    // cout << "fileName in init: " << fileName << endl;
    model = mj_loadXML(fileName, NULL, error, 1000);
    cout << "any errors? " << error << endl;

    model->opt.timestep = timestep;

    if( !model ) {

        printf("%s\n", error);
    }

    // make data corresponding to model
    mdata = mj_makeData(model);
    d_master_reset = mj_makeData(model);

    //model->opt.gravity[2] = 0;
}
