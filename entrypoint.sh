# !/bin/sh -l 

echo "Hello $1"
result=$(date)
echo :: set-output name=result::$result 

