cmake_minimum_required(VERSION 2.8.3)
project(sara_msgs)

## Compile as C++11, supported in ROS Kinetic and newer
# add_compile_options(-std=c++11)

## Find catkin macros and libraries
## if COMPONENTS list like find_package(catkin REQUIRED COMPONENTS xyz)
## is used, also find other catkin packages
find_package(catkin REQUIRED COMPONENTS
        std_msgs
        geometry_msgs
        sensor_msgs
        message_generation
)

## Generate messages in the 'msg' folder
add_message_files(
        FILES
        Person.msg
        Pose.msg
        Bodypart.msg
        BoundingBox2D.msg
        BoundingBox3D.msg
        BoundingBoxes2D.msg
        BoundingBoxes3D.msg
        Entities.msg
        Entity.msg
	FaceMsg.msg
	Faces.msg
	GenderAgePrediction.msg
)

## Generate added messages and services with any dependencies listed here
generate_messages(
        DEPENDENCIES
        sensor_msgs
        std_msgs
        geometry_msgs
)

###################################
## catkin specific configuration ##
###################################
## The catkin_package macro generates cmake config files for your package
## Declare things to be passed to dependent projects
## INCLUDE_DIRS: uncomment this if you package contains header files
## LIBRARIES: libraries you create in this project that dependent projects also need
## CATKIN_DEPENDS: catkin_packages dependent projects also need
## DEPENDS: system dependencies of this project that dependent projects also need
catkin_package(
        #  INCLUDE_DIRS include
        #  LIBRARIES sara_msgs
        #  CATKIN_DEPENDS message_generation message_runtime
        #  DEPENDS system_lib
)

###########
## Build ##
###########

## Specify additional locations of header files
## Your package locations should be listed before other locations
include_directories(
        # include
        ${catkin_INCLUDE_DIRS}
)
