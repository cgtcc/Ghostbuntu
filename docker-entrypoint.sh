#!/bin/bash


###################################
Author : thecodecoaster@gmail.com
GitRepo: https://github.com/codecoaster/Ghostbuntu
###################################

cd /usr/src/ghost;

pm2 start -x index.js;

