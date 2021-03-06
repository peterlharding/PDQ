#!/bin/sh
#
#  Purpose: Run a Java program
#
#  $Id: run.sh,v 4.2.1.1 2007/10/07 07:10:50 stevej098 Exp $
#
#---------------------------------------------------------------------

# export JAVA_HOME=/c/PROGRA~1/Java/j2sdk1.4.2_08

[ $VERBOSE ] && echo "JAVA_HOME => $JAVA_HOME"

ARGS=$*

WRK=`pwd`; export WRK

CLASSPATH="../lib/pdq.jar;../lib/braju.jar;."; export CLASSPATH

[ $VERBOSE ] && echo "CLASSPATH => $CLASSPATH"

V=-verbose
V=

[ $VERBOSE ] && echo $JAVA_HOME/bin/java $V -cp $CLASSPATH $ARGS

$JAVA_HOME/bin/java $V -cp $CLASSPATH $ARGS

