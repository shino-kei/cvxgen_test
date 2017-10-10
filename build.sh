#! /bin/sh

if [ ! -d build ]; then
  echo "could not find build folder"
  echo "create `pwd`/build \n "
  mkdir build
fi

cd build
echo "\n===generating makefile==="
cmake ../

echo "\n===starting make==="
make
