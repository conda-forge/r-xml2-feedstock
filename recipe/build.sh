#!/bin/bash
export DISABLE_AUTOBREW=1

# Get latest config.sub and config.guess
cp $BUILD_PREFIX/share/gnuconfig/config.{sub,guess} .

# shellcheck disable=SC2086
${R} CMD INSTALL --configure-vars="INCLUDE_DIR=${BUILD_PREFIX}/include LIB_DIR=${BUILD_PREFIX}/lib" --build . ${R_ARGS}
