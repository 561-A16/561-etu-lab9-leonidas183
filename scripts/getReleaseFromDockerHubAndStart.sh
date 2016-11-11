#!bin/bash
set –ev

docker pull leonidas183/webapp:release

#docker rm $(docker stop $(docker ps -a -q --filter ancestor="leonidas183/webapp:release"))

docker run -itd -p 6524:5000 leonidas183/webapp:release