#!/bin/bash
# Source: https://github.com/kchenery/gwn-docker
/gwn/gwn start

LOGFILE=/gwn/logs/gwn/web/system.log

if [ -f $LOGFILE ]; then
    tail -f /gwn/logs/gwn/web/system.log
fi
