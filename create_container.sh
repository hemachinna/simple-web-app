#!/bin/bash


a=$1




for i in `seq $a`
do
echo "==========================="
sleep 2
docker run -it -d --name hemanth$i ubuntu /bin/bash
echo "container is created $i"
done
