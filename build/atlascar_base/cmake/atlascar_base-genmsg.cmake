# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "atlascar_base: 8 messages, 0 services")

set(MSG_I_FLAGS "-Iatlascar_base:/home/ruic7/MTT/src/atlascar_base/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(atlascar_base_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/ruic7/MTT/src/atlascar_base/msg/GearboxCommand.msg" NAME_WE)
add_custom_target(_atlascar_base_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "atlascar_base" "/home/ruic7/MTT/src/atlascar_base/msg/GearboxCommand.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/ruic7/MTT/src/atlascar_base/msg/ManagerCommand.msg" NAME_WE)
add_custom_target(_atlascar_base_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "atlascar_base" "/home/ruic7/MTT/src/atlascar_base/msg/ManagerCommand.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/ruic7/MTT/src/atlascar_base/msg/GearboxStatus.msg" NAME_WE)
add_custom_target(_atlascar_base_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "atlascar_base" "/home/ruic7/MTT/src/atlascar_base/msg/GearboxStatus.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/ruic7/MTT/src/atlascar_base/msg/ThrottleCommand.msg" NAME_WE)
add_custom_target(_atlascar_base_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "atlascar_base" "/home/ruic7/MTT/src/atlascar_base/msg/ThrottleCommand.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/ruic7/MTT/src/atlascar_base/msg/ThrottleStatus.msg" NAME_WE)
add_custom_target(_atlascar_base_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "atlascar_base" "/home/ruic7/MTT/src/atlascar_base/msg/ThrottleStatus.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/ruic7/MTT/src/atlascar_base/msg/ManagerStatus.msg" NAME_WE)
add_custom_target(_atlascar_base_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "atlascar_base" "/home/ruic7/MTT/src/atlascar_base/msg/ManagerStatus.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/ruic7/MTT/src/atlascar_base/msg/PlcStatus.msg" NAME_WE)
add_custom_target(_atlascar_base_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "atlascar_base" "/home/ruic7/MTT/src/atlascar_base/msg/PlcStatus.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/ruic7/MTT/src/atlascar_base/msg/PlcCommand.msg" NAME_WE)
add_custom_target(_atlascar_base_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "atlascar_base" "/home/ruic7/MTT/src/atlascar_base/msg/PlcCommand.msg" "std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(atlascar_base
  "/home/ruic7/MTT/src/atlascar_base/msg/GearboxCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/atlascar_base
)
_generate_msg_cpp(atlascar_base
  "/home/ruic7/MTT/src/atlascar_base/msg/ManagerCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/atlascar_base
)
_generate_msg_cpp(atlascar_base
  "/home/ruic7/MTT/src/atlascar_base/msg/GearboxStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/atlascar_base
)
_generate_msg_cpp(atlascar_base
  "/home/ruic7/MTT/src/atlascar_base/msg/ThrottleCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/atlascar_base
)
_generate_msg_cpp(atlascar_base
  "/home/ruic7/MTT/src/atlascar_base/msg/ThrottleStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/atlascar_base
)
_generate_msg_cpp(atlascar_base
  "/home/ruic7/MTT/src/atlascar_base/msg/ManagerStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/atlascar_base
)
_generate_msg_cpp(atlascar_base
  "/home/ruic7/MTT/src/atlascar_base/msg/PlcStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/atlascar_base
)
_generate_msg_cpp(atlascar_base
  "/home/ruic7/MTT/src/atlascar_base/msg/PlcCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/atlascar_base
)

### Generating Services

### Generating Module File
_generate_module_cpp(atlascar_base
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/atlascar_base
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(atlascar_base_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(atlascar_base_generate_messages atlascar_base_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ruic7/MTT/src/atlascar_base/msg/GearboxCommand.msg" NAME_WE)
add_dependencies(atlascar_base_generate_messages_cpp _atlascar_base_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ruic7/MTT/src/atlascar_base/msg/ManagerCommand.msg" NAME_WE)
add_dependencies(atlascar_base_generate_messages_cpp _atlascar_base_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ruic7/MTT/src/atlascar_base/msg/GearboxStatus.msg" NAME_WE)
add_dependencies(atlascar_base_generate_messages_cpp _atlascar_base_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ruic7/MTT/src/atlascar_base/msg/ThrottleCommand.msg" NAME_WE)
add_dependencies(atlascar_base_generate_messages_cpp _atlascar_base_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ruic7/MTT/src/atlascar_base/msg/ThrottleStatus.msg" NAME_WE)
add_dependencies(atlascar_base_generate_messages_cpp _atlascar_base_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ruic7/MTT/src/atlascar_base/msg/ManagerStatus.msg" NAME_WE)
add_dependencies(atlascar_base_generate_messages_cpp _atlascar_base_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ruic7/MTT/src/atlascar_base/msg/PlcStatus.msg" NAME_WE)
add_dependencies(atlascar_base_generate_messages_cpp _atlascar_base_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ruic7/MTT/src/atlascar_base/msg/PlcCommand.msg" NAME_WE)
add_dependencies(atlascar_base_generate_messages_cpp _atlascar_base_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(atlascar_base_gencpp)
add_dependencies(atlascar_base_gencpp atlascar_base_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS atlascar_base_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(atlascar_base
  "/home/ruic7/MTT/src/atlascar_base/msg/GearboxCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/atlascar_base
)
_generate_msg_eus(atlascar_base
  "/home/ruic7/MTT/src/atlascar_base/msg/ManagerCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/atlascar_base
)
_generate_msg_eus(atlascar_base
  "/home/ruic7/MTT/src/atlascar_base/msg/GearboxStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/atlascar_base
)
_generate_msg_eus(atlascar_base
  "/home/ruic7/MTT/src/atlascar_base/msg/ThrottleCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/atlascar_base
)
_generate_msg_eus(atlascar_base
  "/home/ruic7/MTT/src/atlascar_base/msg/ThrottleStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/atlascar_base
)
_generate_msg_eus(atlascar_base
  "/home/ruic7/MTT/src/atlascar_base/msg/ManagerStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/atlascar_base
)
_generate_msg_eus(atlascar_base
  "/home/ruic7/MTT/src/atlascar_base/msg/PlcStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/atlascar_base
)
_generate_msg_eus(atlascar_base
  "/home/ruic7/MTT/src/atlascar_base/msg/PlcCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/atlascar_base
)

### Generating Services

### Generating Module File
_generate_module_eus(atlascar_base
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/atlascar_base
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(atlascar_base_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(atlascar_base_generate_messages atlascar_base_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ruic7/MTT/src/atlascar_base/msg/GearboxCommand.msg" NAME_WE)
add_dependencies(atlascar_base_generate_messages_eus _atlascar_base_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ruic7/MTT/src/atlascar_base/msg/ManagerCommand.msg" NAME_WE)
add_dependencies(atlascar_base_generate_messages_eus _atlascar_base_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ruic7/MTT/src/atlascar_base/msg/GearboxStatus.msg" NAME_WE)
add_dependencies(atlascar_base_generate_messages_eus _atlascar_base_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ruic7/MTT/src/atlascar_base/msg/ThrottleCommand.msg" NAME_WE)
add_dependencies(atlascar_base_generate_messages_eus _atlascar_base_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ruic7/MTT/src/atlascar_base/msg/ThrottleStatus.msg" NAME_WE)
add_dependencies(atlascar_base_generate_messages_eus _atlascar_base_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ruic7/MTT/src/atlascar_base/msg/ManagerStatus.msg" NAME_WE)
add_dependencies(atlascar_base_generate_messages_eus _atlascar_base_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ruic7/MTT/src/atlascar_base/msg/PlcStatus.msg" NAME_WE)
add_dependencies(atlascar_base_generate_messages_eus _atlascar_base_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ruic7/MTT/src/atlascar_base/msg/PlcCommand.msg" NAME_WE)
add_dependencies(atlascar_base_generate_messages_eus _atlascar_base_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(atlascar_base_geneus)
add_dependencies(atlascar_base_geneus atlascar_base_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS atlascar_base_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(atlascar_base
  "/home/ruic7/MTT/src/atlascar_base/msg/GearboxCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/atlascar_base
)
_generate_msg_lisp(atlascar_base
  "/home/ruic7/MTT/src/atlascar_base/msg/ManagerCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/atlascar_base
)
_generate_msg_lisp(atlascar_base
  "/home/ruic7/MTT/src/atlascar_base/msg/GearboxStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/atlascar_base
)
_generate_msg_lisp(atlascar_base
  "/home/ruic7/MTT/src/atlascar_base/msg/ThrottleCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/atlascar_base
)
_generate_msg_lisp(atlascar_base
  "/home/ruic7/MTT/src/atlascar_base/msg/ThrottleStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/atlascar_base
)
_generate_msg_lisp(atlascar_base
  "/home/ruic7/MTT/src/atlascar_base/msg/ManagerStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/atlascar_base
)
_generate_msg_lisp(atlascar_base
  "/home/ruic7/MTT/src/atlascar_base/msg/PlcStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/atlascar_base
)
_generate_msg_lisp(atlascar_base
  "/home/ruic7/MTT/src/atlascar_base/msg/PlcCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/atlascar_base
)

### Generating Services

### Generating Module File
_generate_module_lisp(atlascar_base
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/atlascar_base
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(atlascar_base_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(atlascar_base_generate_messages atlascar_base_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ruic7/MTT/src/atlascar_base/msg/GearboxCommand.msg" NAME_WE)
add_dependencies(atlascar_base_generate_messages_lisp _atlascar_base_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ruic7/MTT/src/atlascar_base/msg/ManagerCommand.msg" NAME_WE)
add_dependencies(atlascar_base_generate_messages_lisp _atlascar_base_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ruic7/MTT/src/atlascar_base/msg/GearboxStatus.msg" NAME_WE)
add_dependencies(atlascar_base_generate_messages_lisp _atlascar_base_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ruic7/MTT/src/atlascar_base/msg/ThrottleCommand.msg" NAME_WE)
add_dependencies(atlascar_base_generate_messages_lisp _atlascar_base_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ruic7/MTT/src/atlascar_base/msg/ThrottleStatus.msg" NAME_WE)
add_dependencies(atlascar_base_generate_messages_lisp _atlascar_base_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ruic7/MTT/src/atlascar_base/msg/ManagerStatus.msg" NAME_WE)
add_dependencies(atlascar_base_generate_messages_lisp _atlascar_base_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ruic7/MTT/src/atlascar_base/msg/PlcStatus.msg" NAME_WE)
add_dependencies(atlascar_base_generate_messages_lisp _atlascar_base_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ruic7/MTT/src/atlascar_base/msg/PlcCommand.msg" NAME_WE)
add_dependencies(atlascar_base_generate_messages_lisp _atlascar_base_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(atlascar_base_genlisp)
add_dependencies(atlascar_base_genlisp atlascar_base_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS atlascar_base_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(atlascar_base
  "/home/ruic7/MTT/src/atlascar_base/msg/GearboxCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/atlascar_base
)
_generate_msg_nodejs(atlascar_base
  "/home/ruic7/MTT/src/atlascar_base/msg/ManagerCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/atlascar_base
)
_generate_msg_nodejs(atlascar_base
  "/home/ruic7/MTT/src/atlascar_base/msg/GearboxStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/atlascar_base
)
_generate_msg_nodejs(atlascar_base
  "/home/ruic7/MTT/src/atlascar_base/msg/ThrottleCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/atlascar_base
)
_generate_msg_nodejs(atlascar_base
  "/home/ruic7/MTT/src/atlascar_base/msg/ThrottleStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/atlascar_base
)
_generate_msg_nodejs(atlascar_base
  "/home/ruic7/MTT/src/atlascar_base/msg/ManagerStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/atlascar_base
)
_generate_msg_nodejs(atlascar_base
  "/home/ruic7/MTT/src/atlascar_base/msg/PlcStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/atlascar_base
)
_generate_msg_nodejs(atlascar_base
  "/home/ruic7/MTT/src/atlascar_base/msg/PlcCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/atlascar_base
)

### Generating Services

### Generating Module File
_generate_module_nodejs(atlascar_base
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/atlascar_base
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(atlascar_base_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(atlascar_base_generate_messages atlascar_base_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ruic7/MTT/src/atlascar_base/msg/GearboxCommand.msg" NAME_WE)
add_dependencies(atlascar_base_generate_messages_nodejs _atlascar_base_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ruic7/MTT/src/atlascar_base/msg/ManagerCommand.msg" NAME_WE)
add_dependencies(atlascar_base_generate_messages_nodejs _atlascar_base_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ruic7/MTT/src/atlascar_base/msg/GearboxStatus.msg" NAME_WE)
add_dependencies(atlascar_base_generate_messages_nodejs _atlascar_base_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ruic7/MTT/src/atlascar_base/msg/ThrottleCommand.msg" NAME_WE)
add_dependencies(atlascar_base_generate_messages_nodejs _atlascar_base_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ruic7/MTT/src/atlascar_base/msg/ThrottleStatus.msg" NAME_WE)
add_dependencies(atlascar_base_generate_messages_nodejs _atlascar_base_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ruic7/MTT/src/atlascar_base/msg/ManagerStatus.msg" NAME_WE)
add_dependencies(atlascar_base_generate_messages_nodejs _atlascar_base_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ruic7/MTT/src/atlascar_base/msg/PlcStatus.msg" NAME_WE)
add_dependencies(atlascar_base_generate_messages_nodejs _atlascar_base_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ruic7/MTT/src/atlascar_base/msg/PlcCommand.msg" NAME_WE)
add_dependencies(atlascar_base_generate_messages_nodejs _atlascar_base_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(atlascar_base_gennodejs)
add_dependencies(atlascar_base_gennodejs atlascar_base_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS atlascar_base_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(atlascar_base
  "/home/ruic7/MTT/src/atlascar_base/msg/GearboxCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/atlascar_base
)
_generate_msg_py(atlascar_base
  "/home/ruic7/MTT/src/atlascar_base/msg/ManagerCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/atlascar_base
)
_generate_msg_py(atlascar_base
  "/home/ruic7/MTT/src/atlascar_base/msg/GearboxStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/atlascar_base
)
_generate_msg_py(atlascar_base
  "/home/ruic7/MTT/src/atlascar_base/msg/ThrottleCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/atlascar_base
)
_generate_msg_py(atlascar_base
  "/home/ruic7/MTT/src/atlascar_base/msg/ThrottleStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/atlascar_base
)
_generate_msg_py(atlascar_base
  "/home/ruic7/MTT/src/atlascar_base/msg/ManagerStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/atlascar_base
)
_generate_msg_py(atlascar_base
  "/home/ruic7/MTT/src/atlascar_base/msg/PlcStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/atlascar_base
)
_generate_msg_py(atlascar_base
  "/home/ruic7/MTT/src/atlascar_base/msg/PlcCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/atlascar_base
)

### Generating Services

### Generating Module File
_generate_module_py(atlascar_base
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/atlascar_base
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(atlascar_base_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(atlascar_base_generate_messages atlascar_base_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ruic7/MTT/src/atlascar_base/msg/GearboxCommand.msg" NAME_WE)
add_dependencies(atlascar_base_generate_messages_py _atlascar_base_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ruic7/MTT/src/atlascar_base/msg/ManagerCommand.msg" NAME_WE)
add_dependencies(atlascar_base_generate_messages_py _atlascar_base_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ruic7/MTT/src/atlascar_base/msg/GearboxStatus.msg" NAME_WE)
add_dependencies(atlascar_base_generate_messages_py _atlascar_base_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ruic7/MTT/src/atlascar_base/msg/ThrottleCommand.msg" NAME_WE)
add_dependencies(atlascar_base_generate_messages_py _atlascar_base_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ruic7/MTT/src/atlascar_base/msg/ThrottleStatus.msg" NAME_WE)
add_dependencies(atlascar_base_generate_messages_py _atlascar_base_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ruic7/MTT/src/atlascar_base/msg/ManagerStatus.msg" NAME_WE)
add_dependencies(atlascar_base_generate_messages_py _atlascar_base_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ruic7/MTT/src/atlascar_base/msg/PlcStatus.msg" NAME_WE)
add_dependencies(atlascar_base_generate_messages_py _atlascar_base_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ruic7/MTT/src/atlascar_base/msg/PlcCommand.msg" NAME_WE)
add_dependencies(atlascar_base_generate_messages_py _atlascar_base_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(atlascar_base_genpy)
add_dependencies(atlascar_base_genpy atlascar_base_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS atlascar_base_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/atlascar_base)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/atlascar_base
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(atlascar_base_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/atlascar_base)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/atlascar_base
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(atlascar_base_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/atlascar_base)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/atlascar_base
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(atlascar_base_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/atlascar_base)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/atlascar_base
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(atlascar_base_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/atlascar_base)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/atlascar_base\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/atlascar_base
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(atlascar_base_generate_messages_py std_msgs_generate_messages_py)
endif()
