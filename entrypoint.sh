#!/bin/sh -l

echo "Hello $1 $2 $3 $4 $5 $6"
time=$(date)
echo ::set-output name=time::$time

DBURL=$1
TOKEN=$2
CLUSTERID=$3
LOCALPATH=$4
WORKSPACEPATH=$5
OUTFILEPATH=$6

echo "Hello2 $DBURL $TOKEN $CLUSTERID $LOCALPATH $WORKSPACEPATH $OUTFILEPATH"

python3 ${SCRIPTPATH}/executenotebook.py --workspace=${DBURL}\
                        --token=$TOKEN\
                        --clusterid=${CLUSTERID}\
                        --localpath=${LOCALPATH}\
                        --workspacepath=${WORKSPACEPATH}\
                        --outfilepath=${OUTFILEPATH}