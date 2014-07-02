#!/bin/bash

APPS_HOME=~/apps
DATA_DIR=~/data
LOG_DIR=~/logs

cd $APPS_HOME
wget http://fastdl.mongodb.org/linux/mongodb-linux-x86_64-2.6.3.tgz
tar xvzf mongodb-linux-x86_64-2.6.3.tgz
rm -rf mongodb-linux-x86_64-2.6.3.tgz
ln -s mongodb-linux-x86_64-2.6.3 mongodb
mkdir -p $DATA_DIR/mongodb
mkdir -p $LOG_DIR/mongodb

