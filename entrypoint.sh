#!/bin/sh -l

echo "Hello $1 $2 $3 $4"
time=$(date)
echo ::set-output name=time::$time

DBURL=$1
TOKEN=$2
CLUSTERID=$3
WORKSPACEPATH=$4

echo "Hello2 $DBURL $TOKEN $CLUSTERID $WORKSPACEPATH"

python3 ${SCRIPTPATH}/executenotebook.py --workspace=${DBURL}\
                        --token=$TOKEN\
                        --clusterid=${CLUSTERID}\
                        --localpath=${NOTEBOOKPATH}/VALIDATION\
                        --workspacepath=${WORKSPACEPATH}/VALIDATION\
                        --outfilepath=${OUTFILEPATH}