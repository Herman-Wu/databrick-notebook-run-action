#!/bin/sh -l

echo "Hello $1"
time=$(date)
echo ::set-output name=time::$time


python3 ${SCRIPTPATH}/executenotebook.py --workspace=${DBURL}\
                        --token=$TOKEN\
                        --clusterid=${CLUSTERID}\
                        --localpath=${NOTEBOOKPATH}/VALIDATION\
                        --workspacepath=${WORKSPACEPATH}/VALIDATION\
                        --outfilepath=${OUTFILEPATH}