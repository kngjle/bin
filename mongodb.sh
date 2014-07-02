#!/bin/bash

if [ $# -lt 1 ]; then
	echo "Usage: $0 [start|stop]"
	exit 1;
fi

COMMAND=$1
MONGODB_HOME=~/apps/mongodb
DATA_DIR=~/data/mongodb
LOG_FILE=~/logs/mongodb/mongodb.log

case $COMMAND in
	start )
		$MONGODB_HOME/bin/mongod --dbpath $DATA_DIR --logpath $LOG_FILE --fork
		;;
	stop )
		$MONGODB_HOME/bin/mongod --dbpath $DATA_DIR --shutdown
		;;
esac
