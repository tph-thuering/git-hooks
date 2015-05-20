#!/bin/bash

TRAVIS=`which travis`
EXITCODE=0

if [ -z ${TRAVIS} ]
then 
  echo no travis installed >&2
  echo please install travis: https://github.com/travis-ci/travis.rb <&2
  export EXITCODE=1
else
  export EXITCODE=0
fi

if [ $EXITCODE -eq 0 ]
then
  ${TRAVIS} lint -x
  export EXITCODE=$?
fi

exit $EXITCODE
