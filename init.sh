#! /bin/bash

echo "What's the name of your project? (SPACES ARE FORBIDDEN)"
read name

if [[ -n "$name" ]]; then
  mv MY_PROJECT_NAME ${name}

  perl -pi -e "s/MY_PROJECT_NAME/${name}/g" Cakefile
  xcake make
  rm -f Cakefile
  rm -f init.sh
fi
