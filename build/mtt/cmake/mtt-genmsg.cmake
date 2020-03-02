# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "mtt: 3 messages, 0 services")

set(MSG_I_FLAGS "-Imtt:/home/ruic7/mymtt/src/mtt/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/melodic/share/sensor_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(mtt_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/ruic7/mymtt/src/mtt/msg/Target.msg" NAME_WE)
add_custom_target(_mtt_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mtt" "/home/ruic7/mymtt/src/mtt/msg/Target.msg" "geometry_msgs/Twist:geometry_msgs/Vector3:geometry_msgs/Pose:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/Point"
)

get_filename_component(_filename "/home/ruic7/mymtt/src/mtt/msg/TargetListPC.msg" NAME_WE)
add_custom_target(_mtt_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mtt" "/home/ruic7/mymtt/src/mtt/msg/TargetListPC.msg" "sensor_msgs/PointCloud2:sensor_msgs/PointField:std_msgs/Header"
)

get_filename_component(_filename "/home/ruic7/mymtt/src/mtt/msg/TargetList.msg" NAME_WE)
add_custom_target(_mtt_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mtt" "/home/ruic7/mymtt/src/mtt/msg/TargetList.msg" "geometry_msgs/Twist:mtt/Target:geometry_msgs/Vector3:geometry_msgs/Pose:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/Point"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(mtt
  "/home/ruic7/mymtt/src/mtt/msg/TargetList.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/home/ruic7/mymtt/src/mtt/msg/Target.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mtt
)
_generate_msg_cpp(mtt
  "/home/ruic7/mymtt/src/mtt/msg/TargetListPC.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mtt
)
_generate_msg_cpp(mtt
  "/home/ruic7/mymtt/src/mtt/msg/Target.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mtt
)

### Generating Services

### Generating Module File
_generate_module_cpp(mtt
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mtt
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(mtt_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(mtt_generate_messages mtt_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ruic7/mymtt/src/mtt/msg/Target.msg" NAME_WE)
add_dependencies(mtt_generate_messages_cpp _mtt_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ruic7/mymtt/src/mtt/msg/TargetListPC.msg" NAME_WE)
add_dependencies(mtt_generate_messages_cpp _mtt_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ruic7/mymtt/src/mtt/msg/TargetList.msg" NAME_WE)
add_dependencies(mtt_generate_messages_cpp _mtt_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mtt_gencpp)
add_dependencies(mtt_gencpp mtt_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mtt_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(mtt
  "/home/ruic7/mymtt/src/mtt/msg/TargetList.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/home/ruic7/mymtt/src/mtt/msg/Target.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mtt
)
_generate_msg_eus(mtt
  "/home/ruic7/mymtt/src/mtt/msg/TargetListPC.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mtt
)
_generate_msg_eus(mtt
  "/home/ruic7/mymtt/src/mtt/msg/Target.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mtt
)

### Generating Services

### Generating Module File
_generate_module_eus(mtt
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mtt
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(mtt_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(mtt_generate_messages mtt_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ruic7/mymtt/src/mtt/msg/Target.msg" NAME_WE)
add_dependencies(mtt_generate_messages_eus _mtt_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ruic7/mymtt/src/mtt/msg/TargetListPC.msg" NAME_WE)
add_dependencies(mtt_generate_messages_eus _mtt_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ruic7/mymtt/src/mtt/msg/TargetList.msg" NAME_WE)
add_dependencies(mtt_generate_messages_eus _mtt_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mtt_geneus)
add_dependencies(mtt_geneus mtt_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mtt_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(mtt
  "/home/ruic7/mymtt/src/mtt/msg/TargetList.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/home/ruic7/mymtt/src/mtt/msg/Target.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mtt
)
_generate_msg_lisp(mtt
  "/home/ruic7/mymtt/src/mtt/msg/TargetListPC.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mtt
)
_generate_msg_lisp(mtt
  "/home/ruic7/mymtt/src/mtt/msg/Target.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mtt
)

### Generating Services

### Generating Module File
_generate_module_lisp(mtt
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mtt
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(mtt_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(mtt_generate_messages mtt_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ruic7/mymtt/src/mtt/msg/Target.msg" NAME_WE)
add_dependencies(mtt_generate_messages_lisp _mtt_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ruic7/mymtt/src/mtt/msg/TargetListPC.msg" NAME_WE)
add_dependencies(mtt_generate_messages_lisp _mtt_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ruic7/mymtt/src/mtt/msg/TargetList.msg" NAME_WE)
add_dependencies(mtt_generate_messages_lisp _mtt_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mtt_genlisp)
add_dependencies(mtt_genlisp mtt_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mtt_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(mtt
  "/home/ruic7/mymtt/src/mtt/msg/TargetList.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/home/ruic7/mymtt/src/mtt/msg/Target.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mtt
)
_generate_msg_nodejs(mtt
  "/home/ruic7/mymtt/src/mtt/msg/TargetListPC.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mtt
)
_generate_msg_nodejs(mtt
  "/home/ruic7/mymtt/src/mtt/msg/Target.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mtt
)

### Generating Services

### Generating Module File
_generate_module_nodejs(mtt
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mtt
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(mtt_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(mtt_generate_messages mtt_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ruic7/mymtt/src/mtt/msg/Target.msg" NAME_WE)
add_dependencies(mtt_generate_messages_nodejs _mtt_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ruic7/mymtt/src/mtt/msg/TargetListPC.msg" NAME_WE)
add_dependencies(mtt_generate_messages_nodejs _mtt_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ruic7/mymtt/src/mtt/msg/TargetList.msg" NAME_WE)
add_dependencies(mtt_generate_messages_nodejs _mtt_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mtt_gennodejs)
add_dependencies(mtt_gennodejs mtt_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mtt_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(mtt
  "/home/ruic7/mymtt/src/mtt/msg/TargetList.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/home/ruic7/mymtt/src/mtt/msg/Target.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mtt
)
_generate_msg_py(mtt
  "/home/ruic7/mymtt/src/mtt/msg/TargetListPC.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mtt
)
_generate_msg_py(mtt
  "/home/ruic7/mymtt/src/mtt/msg/Target.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mtt
)

### Generating Services

### Generating Module File
_generate_module_py(mtt
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mtt
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(mtt_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(mtt_generate_messages mtt_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ruic7/mymtt/src/mtt/msg/Target.msg" NAME_WE)
add_dependencies(mtt_generate_messages_py _mtt_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ruic7/mymtt/src/mtt/msg/TargetListPC.msg" NAME_WE)
add_dependencies(mtt_generate_messages_py _mtt_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ruic7/mymtt/src/mtt/msg/TargetList.msg" NAME_WE)
add_dependencies(mtt_generate_messages_py _mtt_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mtt_genpy)
add_dependencies(mtt_genpy mtt_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mtt_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mtt)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mtt
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(mtt_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(mtt_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(mtt_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mtt)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mtt
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(mtt_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(mtt_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(mtt_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mtt)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mtt
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(mtt_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(mtt_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(mtt_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mtt)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mtt
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(mtt_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(mtt_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(mtt_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mtt)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mtt\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mtt
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(mtt_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(mtt_generate_messages_py sensor_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(mtt_generate_messages_py geometry_msgs_generate_messages_py)
endif()
