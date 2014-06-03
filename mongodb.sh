#!/bin/bash

COMMAND=$1

case $COMMAND in
	start )
		~/apps/mongodb/bin/mongod --dbpath ~/data/mongodb --logpath ~/logs/mongodb/mongodb.log --fork
		;;
	stop )
		~/apps/mongodb/bin/mongod --dbpath ~/data/mongodb --shutdown
		;;
esac
