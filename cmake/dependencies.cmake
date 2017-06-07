include(ExternalProject)

set(MATH_DEP_DIR ${CMAKE_CURRENT_SOURCE_DIR}/dependencies)
set(MATH_DEP_DOWNLOAD_DIR ${MATH_DEP_DIR}/download)
set(MATH_DEP_SOURCE_DIR ${MATH_DEP_DIR}/source)
set(MATH_DEP_INSTALL_DIR ${MATH_DEP_DIR}/install/${MATH_PLATFORM})

if (MATH_DEP_EIGEN)
    ExternalProject_Add(
        dep_eigen
        URL http://bitbucket.org/eigen/eigen/get/3.3.3.tar.bz2
        DOWNLOAD_DIR ${MATH_DEP_DOWNLOAD_DIR}
        SOURCE_DIR ${MATH_DEP_SOURCE_DIR}/eigen
        BUILD_COMMAND
            rm -rf ${MATH_DEP_INSTALL_DIR}/include/Eigen &&
            test -d ${MATH_DEP_INSTALL_DIR}/include/Eigen ||
            mkdir -p ${MATH_DEP_INSTALL_DIR}/include/Eigen &&
            cp -Rn ${MATH_DEP_SOURCE_DIR}/eigen/Eigen ${MATH_DEP_INSTALL_DIR}/include/
        UPDATE_COMMAND ""
        PATCH_COMMAND ""
        CONFIGURE_COMMAND ""
        INSTALL_COMMAND ""
        TEST_COMMAND ""
    )
    set(MATH_DEPENDENCIES ${MATH_DEPENDENCIES} dep_eigen)
endif()

include_directories(${MATH_DEP_INSTALL_DIR}/include)
link_directories(${MATH_DEP_INSTALL_DIR}/lib)