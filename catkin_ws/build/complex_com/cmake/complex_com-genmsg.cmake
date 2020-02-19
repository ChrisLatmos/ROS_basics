# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "complex_com: 1 messages, 0 services")

set(MSG_I_FLAGS "-Icomplex_com:/home/christos/catkin_ws/src/complex_com/msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(complex_com_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/christos/catkin_ws/src/complex_com/msg/Table.msg" NAME_WE)
add_custom_target(_complex_com_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "complex_com" "/home/christos/catkin_ws/src/complex_com/msg/Table.msg" ""
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(complex_com
  "/home/christos/catkin_ws/src/complex_com/msg/Table.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/complex_com
)

### Generating Services

### Generating Module File
_generate_module_cpp(complex_com
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/complex_com
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(complex_com_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(complex_com_generate_messages complex_com_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/christos/catkin_ws/src/complex_com/msg/Table.msg" NAME_WE)
add_dependencies(complex_com_generate_messages_cpp _complex_com_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(complex_com_gencpp)
add_dependencies(complex_com_gencpp complex_com_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS complex_com_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(complex_com
  "/home/christos/catkin_ws/src/complex_com/msg/Table.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/complex_com
)

### Generating Services

### Generating Module File
_generate_module_lisp(complex_com
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/complex_com
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(complex_com_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(complex_com_generate_messages complex_com_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/christos/catkin_ws/src/complex_com/msg/Table.msg" NAME_WE)
add_dependencies(complex_com_generate_messages_lisp _complex_com_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(complex_com_genlisp)
add_dependencies(complex_com_genlisp complex_com_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS complex_com_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(complex_com
  "/home/christos/catkin_ws/src/complex_com/msg/Table.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/complex_com
)

### Generating Services

### Generating Module File
_generate_module_py(complex_com
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/complex_com
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(complex_com_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(complex_com_generate_messages complex_com_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/christos/catkin_ws/src/complex_com/msg/Table.msg" NAME_WE)
add_dependencies(complex_com_generate_messages_py _complex_com_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(complex_com_genpy)
add_dependencies(complex_com_genpy complex_com_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS complex_com_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/complex_com)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/complex_com
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(complex_com_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/complex_com)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/complex_com
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(complex_com_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/complex_com)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/complex_com\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/complex_com
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(complex_com_generate_messages_py std_msgs_generate_messages_py)
endif()
