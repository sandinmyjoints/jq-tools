#!/bin/bash

sys=$(uname)
case $sys in
    Darwin)
        jq=http://stedolan.github.io/jq/download/osx64/jq
        ;;
    Linux)
        jq=http://stedolan.github.io/jq/download/linux64/jq
        ;;
    *)
        echo Unknown system type: $sys
        exit 1
        ;;
esac       
     
wget "$jq" && chmod u+x jq && \
wget https://raw.github.com/sandinmyjoints/loggly-jsonify/master/jsonify.py && chmod u+x jsonify.py && \
echo == USAGE ==
echo ./jq '.[]' LOGFILE.log.json
echo ./jsonify.py LOGFILE.log
