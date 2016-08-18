#! /bin/bash

echo "What's the name of your project? (SPACES ARE FORBIDDEN)"
read projectName

if [[ -n "$projectName" ]]; then

  echo "What's the organization name?"
  read organization

  if [[ -n "$organization" ]]; then
    mv MY_PROJECT_NAME ${projectName}

    perl -pi -e "s/MY_PROJECT_NAME/${projectName}/g" Cakefile
    perl -pi -e "s/MY_PROJECT_ORGANIZATION/${organization}/g" Cakefile
    xcake make
    rm -f Cakefile
    rm -f init.sh
  fi
fi
