#!/usr/bin/env bash
export NODE_MODULES_PATH=$(npm root)
export NODE_MODULES_BIN_PATH=${NODE_MODULES_PATH}/.bin

browserify(){
 (${NODE_MODULES_BIN_PATH}/browserify $*)
}