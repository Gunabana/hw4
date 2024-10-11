#!/bin/bash

kill $(ps -ef | grep -m 1 "infinite.sh" | gawk '{print $2}')