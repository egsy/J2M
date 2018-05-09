#!/bin/bash
set -ex

if [ ! -f /.j2m ]; then
    bower install
    npm install    
    touch /.j2m
    echo "SUCCESS: jira-md installed!"
fi

npm install -g j2m
exec "$@"
