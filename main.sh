#!/usr/bin/env bash
cd "$(dirname "$0")"

docker stop mysql-src ; docker rm mysql-src
docker stop mysql-des ; docker rm mysql-des
docker-compose up -d

kill $(ps aux | grep 'canal' | awk '{print $2}')

find ./ -name "*.pid" | xargs rm -rf
find ./ -name "h2.*.db" | xargs rm -rf
find ./ -name "meta.dat" | xargs rm -rf


# sleep 20s
# ./canal.deployer/bin/startup.sh

# sleep 10s
# ./canal.adapter/bin/startup.sh

