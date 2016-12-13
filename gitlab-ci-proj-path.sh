#!/bin/bash
# Please make sure you add GITLAB_DOMAIN and HTML_COV_FILE_NAME variable to your gitlab project configuration
export PROJ_PATH="$GOPATH/src/$GITLAB_DOMAIN/$CI_PROJECT_PATH"
export HTML_COV_FILE_PATH="$PROJ_PATH/$HTML_COV_FILE_NAME"
rm -rf $PROJ_PATH
mkdir -p $PROJ_PATH
cp -r . $PROJ_PATH
cd $PROJ_PATH
