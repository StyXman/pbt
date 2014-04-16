#! /bin/bash

pwd=$(pwd)
# so import pbt works and it finds any dep installed by pbt install
export PYTHONPATH="$pwd:$pwd/deps:$PYTHONPATH"
# so it finds only the plugins from the source
export PBT_PLUGINS_PATH="$pwd/plugins"

bin/pbt "$@"
