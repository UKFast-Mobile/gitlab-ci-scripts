#!/bin/bash
# Please make sure you add GITLAB_DOMAIN and HTML_COV_FILE_NAME variable to your gitlab project configuration
echo "Setting PROJ_PATH..."

if [ $GITLAB_DOMAIN == "" ]; then
  echo "GITLAB_DOMAIN environment variable not set"
  exit 1
fi

if [ $CI_PROJECT_PATH == "" ]; then
  echo "CI_PROJECT_PATH environment variable not set"
  exit 1
fi

if [ $HTML_COV_FILE_NAME == ""]; then
  echo "HTML_COV_FILE_NAME environment variable not set"
  exit 1
fi

export PROJ_PATH="$GOPATH/src/$GITLAB_DOMAIN/$CI_PROJECT_PATH"
echo "PROJ_PATH: $PROJ_PATH"
export HTML_COV_FILE_PATH="$PROJ_PATH/$HTML_COV_FILE_NAME"
echo "HTML_COV_FILE_PATH: $HTML_COV_FILE_PATH"
rm -rf $PROJ_PATH
mkdir -p $PROJ_PATH
cp -r . $PROJ_PATH
cd $PROJ_PATH
echo "Done."
