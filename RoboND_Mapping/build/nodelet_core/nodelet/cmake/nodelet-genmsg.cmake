# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "nodelet: 0 messages, 3 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(nodelet_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/nvidia/catkin_ws/src/nodelet_core/nodelet/srv/NodeletUnload.srv" NAME_WE)
add_custom_target(_nodelet_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "nodelet" "/home/nvidia/catkin_ws/src/nodelet_core/nodelet/srv/NodeletUnload.srv" ""
)

get_filename_component(_filename "/home/nvidia/catkin_ws/src/nodelet_core/nodelet/srv/NodeletList.srv" NAME_WE)
add_custom_target(_nodelet_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "nodelet" "/home/nvidia/catkin_ws/src/nodelet_core/nodelet/srv/NodeletList.srv" ""
)

get_filename_component(_filename "/home/nvidia/catkin_ws/src/nodelet_core/nodelet/srv/NodeletLoad.srv" NAME_WE)
add_custom_target(_nodelet_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "nodelet" "/home/nvidia/catkin_ws/src/nodelet_core/nodelet/srv/NodeletLoad.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(nodelet
  "/home/nvidia/catkin_ws/src/nodelet_core/nodelet/srv/NodeletUnload.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/nodelet
)
_generate_srv_cpp(nodelet
  "/home/nvidia/catkin_ws/src/nodelet_core/nodelet/srv/NodeletLoad.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/nodelet
)
_generate_srv_cpp(nodelet
  "/home/nvidia/catkin_ws/src/nodelet_core/nodelet/srv/NodeletList.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/nodelet
)

### Generating Module File
_generate_module_cpp(nodelet
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/nodelet
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(nodelet_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(nodelet_generate_messages nodelet_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nvidia/catkin_ws/src/nodelet_core/nodelet/srv/NodeletUnload.srv" NAME_WE)
add_dependencies(nodelet_generate_messages_cpp _nodelet_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/catkin_ws/src/nodelet_core/nodelet/srv/NodeletList.srv" NAME_WE)
add_dependencies(nodelet_generate_messages_cpp _nodelet_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/catkin_ws/src/nodelet_core/nodelet/srv/NodeletLoad.srv" NAME_WE)
add_dependencies(nodelet_generate_messages_cpp _nodelet_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(nodelet_gencpp)
add_dependencies(nodelet_gencpp nodelet_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS nodelet_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(nodelet
  "/home/nvidia/catkin_ws/src/nodelet_core/nodelet/srv/NodeletUnload.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/nodelet
)
_generate_srv_eus(nodelet
  "/home/nvidia/catkin_ws/src/nodelet_core/nodelet/srv/NodeletLoad.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/nodelet
)
_generate_srv_eus(nodelet
  "/home/nvidia/catkin_ws/src/nodelet_core/nodelet/srv/NodeletList.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/nodelet
)

### Generating Module File
_generate_module_eus(nodelet
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/nodelet
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(nodelet_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(nodelet_generate_messages nodelet_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nvidia/catkin_ws/src/nodelet_core/nodelet/srv/NodeletUnload.srv" NAME_WE)
add_dependencies(nodelet_generate_messages_eus _nodelet_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/catkin_ws/src/nodelet_core/nodelet/srv/NodeletList.srv" NAME_WE)
add_dependencies(nodelet_generate_messages_eus _nodelet_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/catkin_ws/src/nodelet_core/nodelet/srv/NodeletLoad.srv" NAME_WE)
add_dependencies(nodelet_generate_messages_eus _nodelet_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(nodelet_geneus)
add_dependencies(nodelet_geneus nodelet_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS nodelet_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(nodelet
  "/home/nvidia/catkin_ws/src/nodelet_core/nodelet/srv/NodeletUnload.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/nodelet
)
_generate_srv_lisp(nodelet
  "/home/nvidia/catkin_ws/src/nodelet_core/nodelet/srv/NodeletLoad.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/nodelet
)
_generate_srv_lisp(nodelet
  "/home/nvidia/catkin_ws/src/nodelet_core/nodelet/srv/NodeletList.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/nodelet
)

### Generating Module File
_generate_module_lisp(nodelet
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/nodelet
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(nodelet_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(nodelet_generate_messages nodelet_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nvidia/catkin_ws/src/nodelet_core/nodelet/srv/NodeletUnload.srv" NAME_WE)
add_dependencies(nodelet_generate_messages_lisp _nodelet_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/catkin_ws/src/nodelet_core/nodelet/srv/NodeletList.srv" NAME_WE)
add_dependencies(nodelet_generate_messages_lisp _nodelet_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/catkin_ws/src/nodelet_core/nodelet/srv/NodeletLoad.srv" NAME_WE)
add_dependencies(nodelet_generate_messages_lisp _nodelet_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(nodelet_genlisp)
add_dependencies(nodelet_genlisp nodelet_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS nodelet_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(nodelet
  "/home/nvidia/catkin_ws/src/nodelet_core/nodelet/srv/NodeletUnload.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/nodelet
)
_generate_srv_nodejs(nodelet
  "/home/nvidia/catkin_ws/src/nodelet_core/nodelet/srv/NodeletLoad.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/nodelet
)
_generate_srv_nodejs(nodelet
  "/home/nvidia/catkin_ws/src/nodelet_core/nodelet/srv/NodeletList.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/nodelet
)

### Generating Module File
_generate_module_nodejs(nodelet
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/nodelet
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(nodelet_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(nodelet_generate_messages nodelet_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nvidia/catkin_ws/src/nodelet_core/nodelet/srv/NodeletUnload.srv" NAME_WE)
add_dependencies(nodelet_generate_messages_nodejs _nodelet_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/catkin_ws/src/nodelet_core/nodelet/srv/NodeletList.srv" NAME_WE)
add_dependencies(nodelet_generate_messages_nodejs _nodelet_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/catkin_ws/src/nodelet_core/nodelet/srv/NodeletLoad.srv" NAME_WE)
add_dependencies(nodelet_generate_messages_nodejs _nodelet_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(nodelet_gennodejs)
add_dependencies(nodelet_gennodejs nodelet_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS nodelet_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(nodelet
  "/home/nvidia/catkin_ws/src/nodelet_core/nodelet/srv/NodeletUnload.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/nodelet
)
_generate_srv_py(nodelet
  "/home/nvidia/catkin_ws/src/nodelet_core/nodelet/srv/NodeletLoad.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/nodelet
)
_generate_srv_py(nodelet
  "/home/nvidia/catkin_ws/src/nodelet_core/nodelet/srv/NodeletList.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/nodelet
)

### Generating Module File
_generate_module_py(nodelet
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/nodelet
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(nodelet_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(nodelet_generate_messages nodelet_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nvidia/catkin_ws/src/nodelet_core/nodelet/srv/NodeletUnload.srv" NAME_WE)
add_dependencies(nodelet_generate_messages_py _nodelet_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/catkin_ws/src/nodelet_core/nodelet/srv/NodeletList.srv" NAME_WE)
add_dependencies(nodelet_generate_messages_py _nodelet_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/catkin_ws/src/nodelet_core/nodelet/srv/NodeletLoad.srv" NAME_WE)
add_dependencies(nodelet_generate_messages_py _nodelet_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(nodelet_genpy)
add_dependencies(nodelet_genpy nodelet_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS nodelet_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/nodelet)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/nodelet
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(nodelet_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/nodelet)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/nodelet
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(nodelet_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/nodelet)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/nodelet
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(nodelet_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/nodelet)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/nodelet
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(nodelet_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/nodelet)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/nodelet\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/nodelet
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(nodelet_generate_messages_py std_msgs_generate_messages_py)
endif()
