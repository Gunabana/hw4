#!/bin/bash

kill $(ps -ef | grep -m 1 "bash infinite.sh" | gawk '{print $2}')