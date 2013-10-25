#!/usr/bin/bash

wget http://stedolan.github.io/jq/download/linux64/jq && chmod u+x jq && \
wget https://raw.github.com/sandinmyjoints/loggly-jsonify/master/jsonify.py && chmod u+x jsonify.py && \
echo == USAGE ==
echo ./jsonify.py LOGFILE.log
echo ./jq '.[]' LOGFILE.log.json
