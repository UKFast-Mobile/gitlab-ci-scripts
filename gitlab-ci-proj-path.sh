#!/bin/bash
# Please make sure you add GITLAB_DOMAIN and HTML_COV_FILE_NAME variable to your gitlab project configuration
echo "Setting project path to gopath..."
echo "Domain: $GITLAB_DOMAIN"
echo "CI project path: $CI_PROJECT_PATH"
echo "HTML Coverage file name: $HTML_COV_FILE_NAME"
export PROJ_PATH="$GOPATH/src/$GITLAB_DOMAIN/$CI_PROJECT_PATH"
echo "PROJ_PATH: $PROJ_PATH"
export HTML_COV_FILE_PATH="$PROJ_PATH/$HTML_COV_FILE_NAME"
echo "HTML_COV_FILE_PATH: $HTML_COV_FILE_PATH"
rm -rf $PROJ_PATH
mkdir -p $PROJ_PATH
cp -r . $PROJ_PATH
cd $PROJ_PATH
echo "Done."
