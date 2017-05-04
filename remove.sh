#!/bin/bash

USERPASS="admin:password"
HOST="localhost"

QUEUES="Queue1
Queue2
Queue3"



for QUEUE in $QUEUES
        do
                curl -u $USERPASS -d "{\"type\":\"exec\",\"mbean\":\"org.apache.activemq:type=Broker,brokerName=amq\",\"operation\":\"removeQueue(java.lang.String)\",\"arguments\":[\"$QUEUE\"]}" http://$HOST:818
1/hawtio/jolokia/
        done
