#!/usr/bin/env bash
cd "$(dirname "$0")"


kill $(ps aux | grep 'canal' | awk '{print $2}')

find ./ -name "*.pid" | xargs rm -rf
find ./ -name "h2.*.db" | xargs rm -rf
find ./ -name "meta.dat" | xargs rm -rf


./canal.deployer-1.1.4/bin/startup.sh

sleep 10s

./canal.adapter-1.1.4/bin/startup.sh

