#!/bin/sh -l

echo "Hello $1 $2 $3 $4 $5"
time=$(date)
echo ::set-output name=time::$time

DBURL=$1
TOKEN=$2
CLUSTERID=$3
LOCALPATH=$4
WORKSPACEPATH=$5


echo "Hello2 $DBURL $TOKEN $CLUSTERID $NOTEBOOKPATH"

python3 ${SCRIPTPATH}/executenotebook.py --workspace=${DBURL}\
                        --token=$TOKEN\
                        --clusterid=${CLUSTERID}\
                        --localpath=${LOCALPATH}/VALIDATION\
                        --workspacepath=${WORKSPACEPATH}/VALIDATION\
                        --outfilepath=${OUTFILEPATH}