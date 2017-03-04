#!/bin/bash


###################################
Author : thecodecoaster@gmail.com
GitRepo: https://github.com/codecoaster/Ghostbuntu
###################################

cd /usr/src/ghost;

#for,production, you can also use : 
#pm2 start -x index.js;

npm start --production

