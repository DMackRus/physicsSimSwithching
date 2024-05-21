#include "ModelTranslator/SquishSoft.h"

SquishSoft::SquishSoft(): PushBaseClass("franka_gripper", "goal"){

    std::string yamlFilePath = "/taskConfigs/squish_soft.yaml";

    InitModelTranslator(yamlFilePath);
}

void SquishSoft::ReturnRandomStartState(){

    // Randomyl generate a start and goal x and y position for cylinder
    // Random generate a goal x and y position for cylinder


}

void SquishSoft::ReturnRandomGoalState(){

    // Robot configuration doesnt matter for this task
    for(int i = 0; i < full_state_vector.robots[0].joint_names.size(); i++){
        full_state_vector.robots[0].goal_pos[i] = 0.0;
        full_state_vector.robots[0].goal_vel[i] = 0.0;
    }

    // Goal object body
    full_state_vector.rigid_bodies[0].goal_linear_pos[0] = randomGoalX;
    full_state_vector.rigid_bodies[0].goal_linear_pos[1] = randomGoalY;
    full_state_vector.rigid_bodies[0].goal_linear_pos[2] = 0.0;

    full_state_vector.rigid_bodies[0].goal_angular_pos[0] = 0.0;
    full_state_vector.rigid_bodies[0].goal_angular_pos[1] = 0.0;
    full_state_vector.rigid_bodies[0].goal_angular_pos[2] = 0.0;

    // Soft body distractor
    full_state_vector.soft_bodies[0].goal_linear_pos[0] = 0.0;
    full_state_vector.soft_bodies[0].goal_linear_pos[1] = 0.0;
    full_state_vector.soft_bodies[0].goal_linear_pos[2] = 0.0;

    full_state_vector.soft_bodies[0].goal_angular_pos[0] = 0.0;
    full_state_vector.soft_bodies[0].goal_angular_pos[1] = 0.0;
    full_state_vector.soft_bodies[0].goal_angular_pos[2] = 0.0;

}

std::vector<MatrixXd> SquishSoft::CreateInitSetupControls(int horizonLength){
    std::vector<MatrixXd> initSetupControls;

    MuJoCo_helper->CopySystemState(MuJoCo_helper->main_data, MuJoCo_helper->master_reset_data);
    MuJoCo_helper->ForwardSimulator(MuJoCo_helper->main_data);

    // Pushing create init controls borken into three main steps
    // Step 1 - create main waypoints we want to end-effector to pass through
    m_point goalPos;
    std::vector<m_point> mainWayPoints;
    std::vector<int> mainWayPointsTimings;
    std::vector<m_point> allWayPoints;
    goalPos(0) = current_state_vector.rigid_bodies[0].goal_linear_pos[0];
    goalPos(1) = current_state_vector.rigid_bodies[0].goal_linear_pos[1];
    goalPos(2) = 0.0;
    EEWayPointsSetup(goalPos, mainWayPoints, mainWayPointsTimings, horizonLength);
//    cout << "setup mainwaypoint 0: " << mainWayPoints[0] << endl;
//    cout << "setup mainWayPoint 1: " << mainWayPoints[1] << endl;

    // Step 2 - create all subwaypoints over the entire trajectory
    allWayPoints = CreateAllEETransitPoints(mainWayPoints, mainWayPointsTimings);

    // Step 3 - follow the points via the jacobian
    initSetupControls = JacobianEEControl(goalPos, allWayPoints);

    return initSetupControls;
}

std::vector<MatrixXd> SquishSoft::CreateInitOptimisationControls(int horizonLength){
    std::vector<MatrixXd> initControls;

    // Set the goal position so that we can see where we are pushing to
    std::string goalMarkerName = "display_goal";
    pose_6 displayBodyPose;
    MuJoCo_helper->GetBodyPoseAngle(goalMarkerName, displayBodyPose, MuJoCo_helper->master_reset_data);
    displayBodyPose.position[0] = current_state_vector.rigid_bodies[0].goal_linear_pos[0];
    displayBodyPose.position[1] = current_state_vector.rigid_bodies[0].goal_linear_pos[1];
    displayBodyPose.position[2] = 0.0f;
    MuJoCo_helper->SetBodyPoseAngle(goalMarkerName, displayBodyPose, MuJoCo_helper->master_reset_data);

    // Pushing create init controls broken into three main steps
    // Step 1 - create main waypoints we want to end-effector to pass through
    m_point goalPos;
    std::vector<m_point> mainWayPoints;
    std::vector<int> mainWayPointsTimings;
    std::vector<m_point> allWayPoints;
    goalPos(0) = current_state_vector.rigid_bodies[0].goal_linear_pos[0];
    goalPos(1) = current_state_vector.rigid_bodies[0].goal_linear_pos[1];
    EEWayPointsPush(goalPos, mainWayPoints, mainWayPointsTimings, horizonLength);
//    cout << mainWayPoints.size() << " waypoints created" << endl;
//    cout << "mainwaypoint 0: " << mainWayPoints[1] << endl;
//    cout << "mainWayPoint 1: " << mainWayPoints[2] << endl;

    // Step 2 - create all subwaypoints over the entire trajectory
    allWayPoints = CreateAllEETransitPoints(mainWayPoints, mainWayPointsTimings);

    // Step 3 - follow the points via the jacobian
    initControls = JacobianEEControl(goalPos, allWayPoints);

    return initControls;
}

bool SquishSoft::TaskComplete(mjData *d, double &dist){
    bool taskComplete = false;

    pose_6 goal_pose;
    MuJoCo_helper->GetBodyPoseAngle("goal", goal_pose, d);

    double x_diff = goal_pose.position(0) - current_state_vector.rigid_bodies[0].goal_linear_pos[0];
    double y_diff = goal_pose.position(1) - current_state_vector.rigid_bodies[0].goal_linear_pos[1];

    dist = sqrt(pow(x_diff, 2) + pow(y_diff, 2));

    if(dist < 0.025){
        taskComplete = true;
    }


    return taskComplete;
}