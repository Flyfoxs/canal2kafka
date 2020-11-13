#!/usr/bin/env bash
cd "$(dirname "$0")"


cur_fold="$(basename "$(pwd)")"

rsync -avz --exclude=target --exclude=logs --exclude=canal.pid --exclude=.git ../${cur_fold} root@10.0.2.77:/data/
